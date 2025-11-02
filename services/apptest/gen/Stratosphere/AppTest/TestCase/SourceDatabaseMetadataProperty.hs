module Stratosphere.AppTest.TestCase.SourceDatabaseMetadataProperty (
        SourceDatabaseMetadataProperty(..),
        mkSourceDatabaseMetadataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceDatabaseMetadataProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-sourcedatabasemetadata.html>
    SourceDatabaseMetadataProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-sourcedatabasemetadata.html#cfn-apptest-testcase-sourcedatabasemetadata-capturetool>
                                    captureTool :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-sourcedatabasemetadata.html#cfn-apptest-testcase-sourcedatabasemetadata-type>
                                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceDatabaseMetadataProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SourceDatabaseMetadataProperty
mkSourceDatabaseMetadataProperty captureTool type'
  = SourceDatabaseMetadataProperty
      {haddock_workaround_ = (), captureTool = captureTool,
       type' = type'}
instance ToResourceProperties SourceDatabaseMetadataProperty where
  toResourceProperties SourceDatabaseMetadataProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.SourceDatabaseMetadata",
         supportsTags = Prelude.False,
         properties = ["CaptureTool" JSON..= captureTool,
                       "Type" JSON..= type']}
instance JSON.ToJSON SourceDatabaseMetadataProperty where
  toJSON SourceDatabaseMetadataProperty {..}
    = JSON.object
        ["CaptureTool" JSON..= captureTool, "Type" JSON..= type']
instance Property "CaptureTool" SourceDatabaseMetadataProperty where
  type PropertyType "CaptureTool" SourceDatabaseMetadataProperty = Value Prelude.Text
  set newValue SourceDatabaseMetadataProperty {..}
    = SourceDatabaseMetadataProperty {captureTool = newValue, ..}
instance Property "Type" SourceDatabaseMetadataProperty where
  type PropertyType "Type" SourceDatabaseMetadataProperty = Value Prelude.Text
  set newValue SourceDatabaseMetadataProperty {..}
    = SourceDatabaseMetadataProperty {type' = newValue, ..}