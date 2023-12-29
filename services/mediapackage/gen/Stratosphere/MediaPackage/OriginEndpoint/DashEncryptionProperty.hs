module Stratosphere.MediaPackage.OriginEndpoint.DashEncryptionProperty (
        module Exports, DashEncryptionProperty(..),
        mkDashEncryptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.SpekeKeyProviderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DashEncryptionProperty
  = DashEncryptionProperty {keyRotationIntervalSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                            spekeKeyProvider :: SpekeKeyProviderProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDashEncryptionProperty ::
  SpekeKeyProviderProperty -> DashEncryptionProperty
mkDashEncryptionProperty spekeKeyProvider
  = DashEncryptionProperty
      {spekeKeyProvider = spekeKeyProvider,
       keyRotationIntervalSeconds = Prelude.Nothing}
instance ToResourceProperties DashEncryptionProperty where
  toResourceProperties DashEncryptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.DashEncryption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SpekeKeyProvider" JSON..= spekeKeyProvider]
                           (Prelude.catMaybes
                              [(JSON..=) "KeyRotationIntervalSeconds"
                                 Prelude.<$> keyRotationIntervalSeconds]))}
instance JSON.ToJSON DashEncryptionProperty where
  toJSON DashEncryptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SpekeKeyProvider" JSON..= spekeKeyProvider]
              (Prelude.catMaybes
                 [(JSON..=) "KeyRotationIntervalSeconds"
                    Prelude.<$> keyRotationIntervalSeconds])))
instance Property "KeyRotationIntervalSeconds" DashEncryptionProperty where
  type PropertyType "KeyRotationIntervalSeconds" DashEncryptionProperty = Value Prelude.Integer
  set newValue DashEncryptionProperty {..}
    = DashEncryptionProperty
        {keyRotationIntervalSeconds = Prelude.pure newValue, ..}
instance Property "SpekeKeyProvider" DashEncryptionProperty where
  type PropertyType "SpekeKeyProvider" DashEncryptionProperty = SpekeKeyProviderProperty
  set newValue DashEncryptionProperty {..}
    = DashEncryptionProperty {spekeKeyProvider = newValue, ..}