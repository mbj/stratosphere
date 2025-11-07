module Stratosphere.CleanRooms.ConfiguredTable.SnowflakeTableSchemaProperty (
        module Exports, SnowflakeTableSchemaProperty(..),
        mkSnowflakeTableSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.SnowflakeTableSchemaV1Property as Exports
import Stratosphere.ResourceProperties
data SnowflakeTableSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketableschema.html>
    SnowflakeTableSchemaProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketableschema.html#cfn-cleanrooms-configuredtable-snowflaketableschema-v1>
                                  v1 :: [SnowflakeTableSchemaV1Property]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeTableSchemaProperty ::
  [SnowflakeTableSchemaV1Property] -> SnowflakeTableSchemaProperty
mkSnowflakeTableSchemaProperty v1
  = SnowflakeTableSchemaProperty {haddock_workaround_ = (), v1 = v1}
instance ToResourceProperties SnowflakeTableSchemaProperty where
  toResourceProperties SnowflakeTableSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.SnowflakeTableSchema",
         supportsTags = Prelude.False, properties = ["V1" JSON..= v1]}
instance JSON.ToJSON SnowflakeTableSchemaProperty where
  toJSON SnowflakeTableSchemaProperty {..}
    = JSON.object ["V1" JSON..= v1]
instance Property "V1" SnowflakeTableSchemaProperty where
  type PropertyType "V1" SnowflakeTableSchemaProperty = [SnowflakeTableSchemaV1Property]
  set newValue SnowflakeTableSchemaProperty {..}
    = SnowflakeTableSchemaProperty {v1 = newValue, ..}