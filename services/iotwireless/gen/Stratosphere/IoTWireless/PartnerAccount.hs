module Stratosphere.IoTWireless.PartnerAccount (
        module Exports, PartnerAccount(..), mkPartnerAccount
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.PartnerAccount.SidewalkAccountInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.PartnerAccount.SidewalkAccountInfoWithFingerprintProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.PartnerAccount.SidewalkUpdateAccountProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PartnerAccount
  = PartnerAccount {accountLinked :: (Prelude.Maybe (Value Prelude.Bool)),
                    partnerAccountId :: (Prelude.Maybe (Value Prelude.Text)),
                    partnerType :: (Prelude.Maybe (Value Prelude.Text)),
                    sidewalk :: (Prelude.Maybe SidewalkAccountInfoProperty),
                    sidewalkResponse :: (Prelude.Maybe SidewalkAccountInfoWithFingerprintProperty),
                    sidewalkUpdate :: (Prelude.Maybe SidewalkUpdateAccountProperty),
                    tags :: (Prelude.Maybe [Tag])}
mkPartnerAccount :: PartnerAccount
mkPartnerAccount
  = PartnerAccount
      {accountLinked = Prelude.Nothing,
       partnerAccountId = Prelude.Nothing, partnerType = Prelude.Nothing,
       sidewalk = Prelude.Nothing, sidewalkResponse = Prelude.Nothing,
       sidewalkUpdate = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties PartnerAccount where
  toResourceProperties PartnerAccount {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::PartnerAccount",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountLinked" Prelude.<$> accountLinked,
                            (JSON..=) "PartnerAccountId" Prelude.<$> partnerAccountId,
                            (JSON..=) "PartnerType" Prelude.<$> partnerType,
                            (JSON..=) "Sidewalk" Prelude.<$> sidewalk,
                            (JSON..=) "SidewalkResponse" Prelude.<$> sidewalkResponse,
                            (JSON..=) "SidewalkUpdate" Prelude.<$> sidewalkUpdate,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON PartnerAccount where
  toJSON PartnerAccount {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountLinked" Prelude.<$> accountLinked,
               (JSON..=) "PartnerAccountId" Prelude.<$> partnerAccountId,
               (JSON..=) "PartnerType" Prelude.<$> partnerType,
               (JSON..=) "Sidewalk" Prelude.<$> sidewalk,
               (JSON..=) "SidewalkResponse" Prelude.<$> sidewalkResponse,
               (JSON..=) "SidewalkUpdate" Prelude.<$> sidewalkUpdate,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AccountLinked" PartnerAccount where
  type PropertyType "AccountLinked" PartnerAccount = Value Prelude.Bool
  set newValue PartnerAccount {..}
    = PartnerAccount {accountLinked = Prelude.pure newValue, ..}
instance Property "PartnerAccountId" PartnerAccount where
  type PropertyType "PartnerAccountId" PartnerAccount = Value Prelude.Text
  set newValue PartnerAccount {..}
    = PartnerAccount {partnerAccountId = Prelude.pure newValue, ..}
instance Property "PartnerType" PartnerAccount where
  type PropertyType "PartnerType" PartnerAccount = Value Prelude.Text
  set newValue PartnerAccount {..}
    = PartnerAccount {partnerType = Prelude.pure newValue, ..}
instance Property "Sidewalk" PartnerAccount where
  type PropertyType "Sidewalk" PartnerAccount = SidewalkAccountInfoProperty
  set newValue PartnerAccount {..}
    = PartnerAccount {sidewalk = Prelude.pure newValue, ..}
instance Property "SidewalkResponse" PartnerAccount where
  type PropertyType "SidewalkResponse" PartnerAccount = SidewalkAccountInfoWithFingerprintProperty
  set newValue PartnerAccount {..}
    = PartnerAccount {sidewalkResponse = Prelude.pure newValue, ..}
instance Property "SidewalkUpdate" PartnerAccount where
  type PropertyType "SidewalkUpdate" PartnerAccount = SidewalkUpdateAccountProperty
  set newValue PartnerAccount {..}
    = PartnerAccount {sidewalkUpdate = Prelude.pure newValue, ..}
instance Property "Tags" PartnerAccount where
  type PropertyType "Tags" PartnerAccount = [Tag]
  set newValue PartnerAccount {..}
    = PartnerAccount {tags = Prelude.pure newValue, ..}