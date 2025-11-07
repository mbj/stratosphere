module Stratosphere.DataZone.Connection.S3PropertiesInputProperty (
        S3PropertiesInputProperty(..), mkS3PropertiesInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3PropertiesInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-s3propertiesinput.html>
    S3PropertiesInputProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-s3propertiesinput.html#cfn-datazone-connection-s3propertiesinput-s3accessgrantlocationid>
                               s3AccessGrantLocationId :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-datazone-connection-s3propertiesinput.html#cfn-datazone-connection-s3propertiesinput-s3uri>
                               s3Uri :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3PropertiesInputProperty ::
  Value Prelude.Text -> S3PropertiesInputProperty
mkS3PropertiesInputProperty s3Uri
  = S3PropertiesInputProperty
      {haddock_workaround_ = (), s3Uri = s3Uri,
       s3AccessGrantLocationId = Prelude.Nothing}
instance ToResourceProperties S3PropertiesInputProperty where
  toResourceProperties S3PropertiesInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::Connection.S3PropertiesInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3Uri" JSON..= s3Uri]
                           (Prelude.catMaybes
                              [(JSON..=) "S3AccessGrantLocationId"
                                 Prelude.<$> s3AccessGrantLocationId]))}
instance JSON.ToJSON S3PropertiesInputProperty where
  toJSON S3PropertiesInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3Uri" JSON..= s3Uri]
              (Prelude.catMaybes
                 [(JSON..=) "S3AccessGrantLocationId"
                    Prelude.<$> s3AccessGrantLocationId])))
instance Property "S3AccessGrantLocationId" S3PropertiesInputProperty where
  type PropertyType "S3AccessGrantLocationId" S3PropertiesInputProperty = Value Prelude.Text
  set newValue S3PropertiesInputProperty {..}
    = S3PropertiesInputProperty
        {s3AccessGrantLocationId = Prelude.pure newValue, ..}
instance Property "S3Uri" S3PropertiesInputProperty where
  type PropertyType "S3Uri" S3PropertiesInputProperty = Value Prelude.Text
  set newValue S3PropertiesInputProperty {..}
    = S3PropertiesInputProperty {s3Uri = newValue, ..}