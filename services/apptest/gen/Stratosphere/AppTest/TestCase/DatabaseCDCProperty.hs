module Stratosphere.AppTest.TestCase.DatabaseCDCProperty (
        module Exports, DatabaseCDCProperty(..), mkDatabaseCDCProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.SourceDatabaseMetadataProperty as Exports
import {-# SOURCE #-} Stratosphere.AppTest.TestCase.TargetDatabaseMetadataProperty as Exports
import Stratosphere.ResourceProperties
data DatabaseCDCProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-databasecdc.html>
    DatabaseCDCProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-databasecdc.html#cfn-apptest-testcase-databasecdc-sourcemetadata>
                         sourceMetadata :: SourceDatabaseMetadataProperty,
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apptest-testcase-databasecdc.html#cfn-apptest-testcase-databasecdc-targetmetadata>
                         targetMetadata :: TargetDatabaseMetadataProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatabaseCDCProperty ::
  SourceDatabaseMetadataProperty
  -> TargetDatabaseMetadataProperty -> DatabaseCDCProperty
mkDatabaseCDCProperty sourceMetadata targetMetadata
  = DatabaseCDCProperty
      {haddock_workaround_ = (), sourceMetadata = sourceMetadata,
       targetMetadata = targetMetadata}
instance ToResourceProperties DatabaseCDCProperty where
  toResourceProperties DatabaseCDCProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppTest::TestCase.DatabaseCDC",
         supportsTags = Prelude.False,
         properties = ["SourceMetadata" JSON..= sourceMetadata,
                       "TargetMetadata" JSON..= targetMetadata]}
instance JSON.ToJSON DatabaseCDCProperty where
  toJSON DatabaseCDCProperty {..}
    = JSON.object
        ["SourceMetadata" JSON..= sourceMetadata,
         "TargetMetadata" JSON..= targetMetadata]
instance Property "SourceMetadata" DatabaseCDCProperty where
  type PropertyType "SourceMetadata" DatabaseCDCProperty = SourceDatabaseMetadataProperty
  set newValue DatabaseCDCProperty {..}
    = DatabaseCDCProperty {sourceMetadata = newValue, ..}
instance Property "TargetMetadata" DatabaseCDCProperty where
  type PropertyType "TargetMetadata" DatabaseCDCProperty = TargetDatabaseMetadataProperty
  set newValue DatabaseCDCProperty {..}
    = DatabaseCDCProperty {targetMetadata = newValue, ..}