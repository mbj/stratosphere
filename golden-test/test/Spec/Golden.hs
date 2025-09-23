module Spec.Golden (runGoldenTest) where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.Golden (goldenVsStringDiff)
import qualified Stratosphere 
import Prelude

runGoldenTest :: FilePath -> Stratosphere.Template -> TestTree
runGoldenTest outputFilename template = do
  let testDirectory = "test/stratosphere/"
  let encodedTemplate = Stratosphere.encodeTemplate template

  testGroup
    "stratosphere => encode"
    [ goldenVsStringDiff
        outputFilename
        (\ref new -> ["diff", "-u", ref, new])
        (testDirectory <> outputFilename)
        (pure encodedTemplate)
    ]

