module Stratosphere.CleanRooms.Membership.ProtectedJobS3OutputConfigurationInputProperty (
        ProtectedJobS3OutputConfigurationInputProperty(..),
        mkProtectedJobS3OutputConfigurationInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProtectedJobS3OutputConfigurationInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedjobs3outputconfigurationinput.html>
    ProtectedJobS3OutputConfigurationInputProperty {haddock_workaround_ :: (),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedjobs3outputconfigurationinput.html#cfn-cleanrooms-membership-protectedjobs3outputconfigurationinput-bucket>
                                                    bucket :: (Value Prelude.Text),
                                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-membership-protectedjobs3outputconfigurationinput.html#cfn-cleanrooms-membership-protectedjobs3outputconfigurationinput-keyprefix>
                                                    keyPrefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProtectedJobS3OutputConfigurationInputProperty ::
  Value Prelude.Text
  -> ProtectedJobS3OutputConfigurationInputProperty
mkProtectedJobS3OutputConfigurationInputProperty bucket
  = ProtectedJobS3OutputConfigurationInputProperty
      {haddock_workaround_ = (), bucket = bucket,
       keyPrefix = Prelude.Nothing}
instance ToResourceProperties ProtectedJobS3OutputConfigurationInputProperty where
  toResourceProperties
    ProtectedJobS3OutputConfigurationInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership.ProtectedJobS3OutputConfigurationInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Bucket" JSON..= bucket]
                           (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix]))}
instance JSON.ToJSON ProtectedJobS3OutputConfigurationInputProperty where
  toJSON ProtectedJobS3OutputConfigurationInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Bucket" JSON..= bucket]
              (Prelude.catMaybes [(JSON..=) "KeyPrefix" Prelude.<$> keyPrefix])))
instance Property "Bucket" ProtectedJobS3OutputConfigurationInputProperty where
  type PropertyType "Bucket" ProtectedJobS3OutputConfigurationInputProperty = Value Prelude.Text
  set newValue ProtectedJobS3OutputConfigurationInputProperty {..}
    = ProtectedJobS3OutputConfigurationInputProperty
        {bucket = newValue, ..}
instance Property "KeyPrefix" ProtectedJobS3OutputConfigurationInputProperty where
  type PropertyType "KeyPrefix" ProtectedJobS3OutputConfigurationInputProperty = Value Prelude.Text
  set newValue ProtectedJobS3OutputConfigurationInputProperty {..}
    = ProtectedJobS3OutputConfigurationInputProperty
        {keyPrefix = Prelude.pure newValue, ..}