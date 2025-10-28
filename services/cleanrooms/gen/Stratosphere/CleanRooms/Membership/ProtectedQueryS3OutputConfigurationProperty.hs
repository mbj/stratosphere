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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedquerys3outputconfiguration.html>
    ProtectedQueryS3OutputConfigurationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedquerys3outputconfiguration.html#cfn-cleanrooms-membership-protectedquerys3outputconfiguration-bucket>
                                                 bucket :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedquerys3outputconfiguration.html#cfn-cleanrooms-membership-protectedquerys3outputconfiguration-keyprefix>
                                                 keyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedquerys3outputconfiguration.html#cfn-cleanrooms-membership-protectedquerys3outputconfiguration-resultformat>
                                                 resultFormat :: (Value Prelude.Text),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedquerys3outputconfiguration.html#cfn-cleanrooms-membership-protectedquerys3outputconfiguration-singlefileoutput>
                                                 singleFileOutput :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtectedQueryS3OutputConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ProtectedQueryS3OutputConfigurationProperty
mkProtectedQueryS3OutputConfigurationProperty bucket resultFormat
  = ProtectedQueryS3OutputConfigurationProperty
      {haddock_workaround_ = (), bucket = bucket,
       resultFormat = resultFormat, keyPrefix = Prelude.Nothing,
       singleFileOutput = Prelude.Nothing}
instance ToResourceProperties ProtectedQueryS3OutputConfigurationProperty where
  toResourceProperties
    ProtectedQueryS3OutputConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.ProtectedQueryS3OutputConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket, "ResultFormat" JSON..= resultFormat]
                           (Prelude.catMaybes
                              [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix,
                               (JSON..=) "SingleFileOutput" Prelude.<$> singleFileOutput]))}
instance JSON.ToJSON ProtectedQueryS3OutputConfigurationProperty where
  toJSON ProtectedQueryS3OutputConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket, "ResultFormat" JSON..= resultFormat]
              (Prelude.catMaybes
                 [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix,
                  (JSON..=) "SingleFileOutput" Prelude.<$> singleFileOutput])))
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
instance Property "SingleFileOutput" ProtectedQueryS3OutputConfigurationProperty where
  type PropertyType "SingleFileOutput" ProtectedQueryS3OutputConfigurationProperty = Value Prelude.Bool
  set newValue ProtectedQueryS3OutputConfigurationProperty {..}
    = ProtectedQueryS3OutputConfigurationProperty
        {singleFileOutput = Prelude.pure newValue, ..}