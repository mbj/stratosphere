module Stratosphere.CleanRooms.Membership.ProtectedQueryS3OutputConfigurationProperty (
        ProtectedQueryS3OutputConfigurationProperty(..),
        mkProtectedQueryS3OutputConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProtectedQueryS3OutputConfigurationProperty
  = ProtectedQueryS3OutputConfigurationProperty {bucket :: (Value Prelude.Text),
                                                 keyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                 resultFormat :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtectedQueryS3OutputConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ProtectedQueryS3OutputConfigurationProperty
mkProtectedQueryS3OutputConfigurationProperty bucket resultFormat
  = ProtectedQueryS3OutputConfigurationProperty
      {bucket = bucket, resultFormat = resultFormat,
       keyPrefix = Prelude.Nothing}
instance ToResourceProperties ProtectedQueryS3OutputConfigurationProperty where
  toResourceProperties
    ProtectedQueryS3OutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.ProtectedQueryS3OutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "ResultFormat" JSON..= resultFormat]
                           (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix]))}
instance JSON.ToJSON ProtectedQueryS3OutputConfigurationProperty where
  toJSON ProtectedQueryS3OutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "ResultFormat" JSON..= resultFormat]
              (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix])))
instance Property "Bucket" ProtectedQueryS3OutputConfigurationProperty where
  type PropertyType "Bucket" ProtectedQueryS3OutputConfigurationProperty = Value Prelude.Text
  set newValue ProtectedQueryS3OutputConfigurationProperty {..}
    = ProtectedQueryS3OutputConfigurationProperty
        {bucket = newValue, ..}
instance Property "KeyPrefix" ProtectedQueryS3OutputConfigurationProperty where
  type PropertyType "KeyPrefix" ProtectedQueryS3OutputConfigurationProperty = Value Prelude.Text
  set newValue ProtectedQueryS3OutputConfigurationProperty {..}
    = ProtectedQueryS3OutputConfigurationProperty
        {keyPrefix = Prelude.pure newValue, ..}
instance Property "ResultFormat" ProtectedQueryS3OutputConfigurationProperty where
  type PropertyType "ResultFormat" ProtectedQueryS3OutputConfigurationProperty = Value Prelude.Text
  set newValue ProtectedQueryS3OutputConfigurationProperty {..}
    = ProtectedQueryS3OutputConfigurationProperty
        {resultFormat = newValue, ..}