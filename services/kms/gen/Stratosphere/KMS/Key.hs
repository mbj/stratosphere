module Stratosphere.KMS.Key (
        Key(..), mkKey
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Key
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html>
    Key {haddock_workaround_ :: (),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-bypasspolicylockoutsafetycheck>
         bypassPolicyLockoutSafetyCheck :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-description>
         description :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enablekeyrotation>
         enableKeyRotation :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-enabled>
         enabled :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keypolicy>
         keyPolicy :: (Prelude.Maybe JSON.Object),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyspec>
         keySpec :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-keyusage>
         keyUsage :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-multiregion>
         multiRegion :: (Prelude.Maybe (Value Prelude.Bool)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-origin>
         origin :: (Prelude.Maybe (Value Prelude.Text)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-pendingwindowindays>
         pendingWindowInDays :: (Prelude.Maybe (Value Prelude.Integer)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-rotationperiodindays>
         rotationPeriodInDays :: (Prelude.Maybe (Value Prelude.Integer)),
         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kms-key.html#cfn-kms-key-tags>
         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKey :: Key
mkKey
  = Key
      {haddock_workaround_ = (),
       bypassPolicyLockoutSafetyCheck = Prelude.Nothing,
       description = Prelude.Nothing, enableKeyRotation = Prelude.Nothing,
       enabled = Prelude.Nothing, keyPolicy = Prelude.Nothing,
       keySpec = Prelude.Nothing, keyUsage = Prelude.Nothing,
       multiRegion = Prelude.Nothing, origin = Prelude.Nothing,
       pendingWindowInDays = Prelude.Nothing,
       rotationPeriodInDays = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Key where
  toResourceProperties Key {..}
    = ResourceProperties
        {awsType = "AWS::KMS::Key", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BypassPolicyLockoutSafetyCheck"
                              Prelude.<$> bypassPolicyLockoutSafetyCheck,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "EnableKeyRotation" Prelude.<$> enableKeyRotation,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "KeyPolicy" Prelude.<$> keyPolicy,
                            (JSON..=) "KeySpec" Prelude.<$> keySpec,
                            (JSON..=) "KeyUsage" Prelude.<$> keyUsage,
                            (JSON..=) "MultiRegion" Prelude.<$> multiRegion,
                            (JSON..=) "Origin" Prelude.<$> origin,
                            (JSON..=) "PendingWindowInDays" Prelude.<$> pendingWindowInDays,
                            (JSON..=) "RotationPeriodInDays" Prelude.<$> rotationPeriodInDays,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Key where
  toJSON Key {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BypassPolicyLockoutSafetyCheck"
                 Prelude.<$> bypassPolicyLockoutSafetyCheck,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "EnableKeyRotation" Prelude.<$> enableKeyRotation,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "KeyPolicy" Prelude.<$> keyPolicy,
               (JSON..=) "KeySpec" Prelude.<$> keySpec,
               (JSON..=) "KeyUsage" Prelude.<$> keyUsage,
               (JSON..=) "MultiRegion" Prelude.<$> multiRegion,
               (JSON..=) "Origin" Prelude.<$> origin,
               (JSON..=) "PendingWindowInDays" Prelude.<$> pendingWindowInDays,
               (JSON..=) "RotationPeriodInDays" Prelude.<$> rotationPeriodInDays,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "BypassPolicyLockoutSafetyCheck" Key where
  type PropertyType "BypassPolicyLockoutSafetyCheck" Key = Value Prelude.Bool
  set newValue Key {..}
    = Key {bypassPolicyLockoutSafetyCheck = Prelude.pure newValue, ..}
instance Property "Description" Key where
  type PropertyType "Description" Key = Value Prelude.Text
  set newValue Key {..}
    = Key {description = Prelude.pure newValue, ..}
instance Property "EnableKeyRotation" Key where
  type PropertyType "EnableKeyRotation" Key = Value Prelude.Bool
  set newValue Key {..}
    = Key {enableKeyRotation = Prelude.pure newValue, ..}
instance Property "Enabled" Key where
  type PropertyType "Enabled" Key = Value Prelude.Bool
  set newValue Key {..} = Key {enabled = Prelude.pure newValue, ..}
instance Property "KeyPolicy" Key where
  type PropertyType "KeyPolicy" Key = JSON.Object
  set newValue Key {..} = Key {keyPolicy = Prelude.pure newValue, ..}
instance Property "KeySpec" Key where
  type PropertyType "KeySpec" Key = Value Prelude.Text
  set newValue Key {..} = Key {keySpec = Prelude.pure newValue, ..}
instance Property "KeyUsage" Key where
  type PropertyType "KeyUsage" Key = Value Prelude.Text
  set newValue Key {..} = Key {keyUsage = Prelude.pure newValue, ..}
instance Property "MultiRegion" Key where
  type PropertyType "MultiRegion" Key = Value Prelude.Bool
  set newValue Key {..}
    = Key {multiRegion = Prelude.pure newValue, ..}
instance Property "Origin" Key where
  type PropertyType "Origin" Key = Value Prelude.Text
  set newValue Key {..} = Key {origin = Prelude.pure newValue, ..}
instance Property "PendingWindowInDays" Key where
  type PropertyType "PendingWindowInDays" Key = Value Prelude.Integer
  set newValue Key {..}
    = Key {pendingWindowInDays = Prelude.pure newValue, ..}
instance Property "RotationPeriodInDays" Key where
  type PropertyType "RotationPeriodInDays" Key = Value Prelude.Integer
  set newValue Key {..}
    = Key {rotationPeriodInDays = Prelude.pure newValue, ..}
instance Property "Tags" Key where
  type PropertyType "Tags" Key = [Tag]
  set newValue Key {..} = Key {tags = Prelude.pure newValue, ..}