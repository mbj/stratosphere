module Stratosphere.AppTest.TestCase.TargetDatabaseMetadataProperty (
        TargetDatabaseMetadataProperty(..),
        mkTargetDatabaseMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetDatabaseMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-targetdatabasemetadata.html>
    TargetDatabaseMetadataProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-targetdatabasemetadata.html#cfn-apptest-testcase-targetdatabasemetadata-capturetool>
                                    captureTool :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-targetdatabasemetadata.html#cfn-apptest-testcase-targetdatabasemetadata-type>
                                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetDatabaseMetadataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TargetDatabaseMetadataProperty
mkTargetDatabaseMetadataProperty captureTool type'
  = TargetDatabaseMetadataProperty
      {haddock_workaround_ = (), captureTool = captureTool,
       type' = type'}
instance ToResourceProperties TargetDatabaseMetadataProperty where
  toResourceProperties TargetDatabaseMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.TargetDatabaseMetadata",
         supportsTags = Prelude.False,
         properties = ["CaptureTool" JSON..= captureTool,
                       "Type" JSON..= type']}
instance JSON.ToJSON TargetDatabaseMetadataProperty where
  toJSON TargetDatabaseMetadataProperty {..}
    = JSON.object
        ["CaptureTool" JSON..= captureTool, "Type" JSON..= type']
instance Property "CaptureTool" TargetDatabaseMetadataProperty where
  type PropertyType "CaptureTool" TargetDatabaseMetadataProperty = Value Prelude.Text
  set newValue TargetDatabaseMetadataProperty {..}
    = TargetDatabaseMetadataProperty {captureTool = newValue, ..}
instance Property "Type" TargetDatabaseMetadataProperty where
  type PropertyType "Type" TargetDatabaseMetadataProperty = Value Prelude.Text
  set newValue TargetDatabaseMetadataProperty {..}
    = TargetDatabaseMetadataProperty {type' = newValue, ..}