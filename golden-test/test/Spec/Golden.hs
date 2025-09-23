module Spec.Golden (runGoldenTest) where

import qualified Stratosphere
import Test.Tasty (TestTree, testGroup)
import Test.Tasty.Golden (goldenVsStringDiff)
import Prelude

runGoldenTest :: FilePath -> Stratosphere.Template -> TestTree
runGoldenTest outputFilename template = do
  let 
    testDirectory :: FilePath
    testDirectory = "test/stratosphere/"
  let encodedTemplate = Stratosphere.encodeTemplate template

  testGroup
    "stratosphere => encode"
    [ goldenVsStringDiff
        outputFilename
        (\ref new -> ["diff", "-u", ref, new])
        (testDirectory <> outputFilename)
        (pure encodedTemplate)
    ]
