module Stratosphere.Manager.Generator.Module
  ( renderModule
  , writeModule
  )
where

import Stratosphere.Manager.Generator.Prelude

import qualified GHC                as GHC
import qualified GHC.Driver.Session as GHC
import qualified GHC.Paths          as GHC
import qualified GHC.SourceGen      as GHC
import qualified Data.List          as List
import qualified System.Directory   as System
import qualified System.FilePath    as Path

import qualified Data.Text    as Text
import qualified Data.Text.IO as Text

renderModule :: GHC.HsModule' -> IO Text
renderModule module' = GHC.runGhc (Just GHC.libdir) $ do
  dynFlags <- GHC.getDynFlags
  pure . Text.pack $ GHC.showPpr dynFlags module'

writeModule :: FilePath -> GHC.HsModule' -> IO ()
writeModule path targetModule = do
  System.createDirectoryIfMissing True (Path.takeDirectory path)
  Text.putStrLn $ "Writing: " <> Text.pack path
  Text.writeFile path =<< renderModule effectiveModule
  where
    effectiveModule = targetModule
      { GHC.hsmodExports = fmap filterExports <$> targetModule.hsmodExports
      }

    filterExports :: [GHC.LIE GHC.GhcPs] -> [GHC.LIE GHC.GhcPs]
    filterExports = List.filter $ \ie ->
      case GHC.unLoc ie of
        GHC.IEModuleContents{} -> hasAsExport
        _other                 -> True

    hasAsExport = List.any
      ((==) (pure $ GHC.mkModuleName "Exports") . fmap GHC.unLoc . (.ideclAs) . GHC.unLoc)
      targetModule.hsmodImports
