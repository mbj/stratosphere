module Stratosphere.AppFlow.Flow.SnowflakeDestinationPropertiesProperty (
        module Exports, SnowflakeDestinationPropertiesProperty(..),
        mkSnowflakeDestinationPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ErrorHandlingConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeDestinationPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html>
    SnowflakeDestinationPropertiesProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-bucketprefix>
                                            bucketPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-errorhandlingconfig>
                                            errorHandlingConfig :: (Prelude.Maybe ErrorHandlingConfigProperty),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-intermediatebucketname>
                                            intermediateBucketName :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-snowflakedestinationproperties.html#cfn-appflow-flow-snowflakedestinationproperties-object>
                                            object :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeDestinationPropertiesProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SnowflakeDestinationPropertiesProperty
mkSnowflakeDestinationPropertiesProperty
  intermediateBucketName
  object
  = SnowflakeDestinationPropertiesProperty
      {haddock_workaround_ = (),
       intermediateBucketName = intermediateBucketName, object = object,
       bucketPrefix = Prelude.Nothing,
       errorHandlingConfig = Prelude.Nothing}
instance ToResourceProperties SnowflakeDestinationPropertiesProperty where
  toResourceProperties SnowflakeDestinationPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.SnowflakeDestinationProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IntermediateBucketName" JSON..= intermediateBucketName,
                            "Object" JSON..= object]
                           (Prelude.catMaybes
                              [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                               (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig]))}
instance JSON.ToJSON SnowflakeDestinationPropertiesProperty where
  toJSON SnowflakeDestinationPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IntermediateBucketName" JSON..= intermediateBucketName,
               "Object" JSON..= object]
              (Prelude.catMaybes
                 [(JSON..=) "BucketPrefix" Prelude.<$> bucketPrefix,
                  (JSON..=) "ErrorHandlingConfig" Prelude.<$> errorHandlingConfig])))
instance Property "BucketPrefix" SnowflakeDestinationPropertiesProperty where
  type PropertyType "BucketPrefix" SnowflakeDestinationPropertiesProperty = Value Prelude.Text
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty
        {bucketPrefix = Prelude.pure newValue, ..}
instance Property "ErrorHandlingConfig" SnowflakeDestinationPropertiesProperty where
  type PropertyType "ErrorHandlingConfig" SnowflakeDestinationPropertiesProperty = ErrorHandlingConfigProperty
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty
        {errorHandlingConfig = Prelude.pure newValue, ..}
instance Property "IntermediateBucketName" SnowflakeDestinationPropertiesProperty where
  type PropertyType "IntermediateBucketName" SnowflakeDestinationPropertiesProperty = Value Prelude.Text
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty
        {intermediateBucketName = newValue, ..}
instance Property "Object" SnowflakeDestinationPropertiesProperty where
  type PropertyType "Object" SnowflakeDestinationPropertiesProperty = Value Prelude.Text
  set newValue SnowflakeDestinationPropertiesProperty {..}
    = SnowflakeDestinationPropertiesProperty {object = newValue, ..}