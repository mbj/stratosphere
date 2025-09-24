module Spec.Golden (runGoldenTest) where

import qualified Stratosphere
import Stratosphere.Prelude
  ( Applicative (..),
    FilePath,
    (<>),
  )
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.Golden (goldenVsStringDiff)

runGoldenTest :: FilePath -> Stratosphere.Template -> TestTree
runGoldenTest outputFilename template = do
  let testDirectory :: FilePath
      testDirectory = "test/stratosphere/"
  let encodedTemplate = Stratosphere.encodeTemplate template

  -- TODO add decoding test
  testGroup
    "stratosphere => encode"
    [ goldenVsStringDiff
        outputFilename
        (\ref new -> ["diff", "-u", ref, new])
        (testDirectory <> outputFilename)
        (pure encodedTemplate)
    ]
