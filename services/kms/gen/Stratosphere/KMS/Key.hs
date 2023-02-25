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
  = Key {description :: (Prelude.Maybe (Value Prelude.Text)),
         enableKeyRotation :: (Prelude.Maybe (Value Prelude.Bool)),
         enabled :: (Prelude.Maybe (Value Prelude.Bool)),
         keyPolicy :: JSON.Object,
         keySpec :: (Prelude.Maybe (Value Prelude.Text)),
         keyUsage :: (Prelude.Maybe (Value Prelude.Text)),
         multiRegion :: (Prelude.Maybe (Value Prelude.Bool)),
         pendingWindowInDays :: (Prelude.Maybe (Value Prelude.Integer)),
         tags :: (Prelude.Maybe [Tag])}
mkKey :: JSON.Object -> Key
mkKey keyPolicy
  = Key
      {keyPolicy = keyPolicy, description = Prelude.Nothing,
       enableKeyRotation = Prelude.Nothing, enabled = Prelude.Nothing,
       keySpec = Prelude.Nothing, keyUsage = Prelude.Nothing,
       multiRegion = Prelude.Nothing,
       pendingWindowInDays = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Key where
  toResourceProperties Key {..}
    = ResourceProperties
        {awsType = "AWS::KMS::Key",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["KeyPolicy" JSON..= keyPolicy]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnableKeyRotation" Prelude.<$> enableKeyRotation,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "KeySpec" Prelude.<$> keySpec,
                               (JSON..=) "KeyUsage" Prelude.<$> keyUsage,
                               (JSON..=) "MultiRegion" Prelude.<$> multiRegion,
                               (JSON..=) "PendingWindowInDays" Prelude.<$> pendingWindowInDays,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Key where
  toJSON Key {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["KeyPolicy" JSON..= keyPolicy]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnableKeyRotation" Prelude.<$> enableKeyRotation,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "KeySpec" Prelude.<$> keySpec,
                  (JSON..=) "KeyUsage" Prelude.<$> keyUsage,
                  (JSON..=) "MultiRegion" Prelude.<$> multiRegion,
                  (JSON..=) "PendingWindowInDays" Prelude.<$> pendingWindowInDays,
                  (JSON..=) "Tags" Prelude.<$> tags])))
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
  set newValue Key {..} = Key {keyPolicy = newValue, ..}
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
instance Property "PendingWindowInDays" Key where
  type PropertyType "PendingWindowInDays" Key = Value Prelude.Integer
  set newValue Key {..}
    = Key {pendingWindowInDays = Prelude.pure newValue, ..}
instance Property "Tags" Key where
  type PropertyType "Tags" Key = [Tag]
  set newValue Key {..} = Key {tags = Prelude.pure newValue, ..}