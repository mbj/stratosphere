module Stratosphere.AppTest.TestCase.TestCaseLatestVersionProperty (
        TestCaseLatestVersionProperty(..), mkTestCaseLatestVersionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TestCaseLatestVersionProperty
  = TestCaseLatestVersionProperty {status :: (Value Prelude.Text),
                                   version :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTestCaseLatestVersionProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> TestCaseLatestVersionProperty
mkTestCaseLatestVersionProperty status version
  = TestCaseLatestVersionProperty
      {status = status, version = version}
instance ToResourceProperties TestCaseLatestVersionProperty where
  toResourceProperties TestCaseLatestVersionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.TestCaseLatestVersion",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status, "Version" JSON..= version]}
instance JSON.ToJSON TestCaseLatestVersionProperty where
  toJSON TestCaseLatestVersionProperty {..}
    = JSON.object ["Status" JSON..= status, "Version" JSON..= version]
instance Property "Status" TestCaseLatestVersionProperty where
  type PropertyType "Status" TestCaseLatestVersionProperty = Value Prelude.Text
  set newValue TestCaseLatestVersionProperty {..}
    = TestCaseLatestVersionProperty {status = newValue, ..}
instance Property "Version" TestCaseLatestVersionProperty where
  type PropertyType "Version" TestCaseLatestVersionProperty = Value Prelude.Double
  set newValue TestCaseLatestVersionProperty {..}
    = TestCaseLatestVersionProperty {version = newValue, ..}