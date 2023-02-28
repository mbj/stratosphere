module Stratosphere.Transfer.Agreement (
        Agreement(..), mkAgreement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Agreement
  = Agreement {accessRole :: (Value Prelude.Text),
               baseDirectory :: (Value Prelude.Text),
               description :: (Prelude.Maybe (Value Prelude.Text)),
               localProfileId :: (Value Prelude.Text),
               partnerProfileId :: (Value Prelude.Text),
               serverId :: (Value Prelude.Text),
               status :: (Prelude.Maybe (Value Prelude.Text)),
               tags :: (Prelude.Maybe [Tag])}
mkAgreement ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> Value Prelude.Text -> Agreement
mkAgreement
  accessRole
  baseDirectory
  localProfileId
  partnerProfileId
  serverId
  = Agreement
      {accessRole = accessRole, baseDirectory = baseDirectory,
       localProfileId = localProfileId,
       partnerProfileId = partnerProfileId, serverId = serverId,
       description = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Agreement where
  toResourceProperties Agreement {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Agreement", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessRole" JSON..= accessRole,
                            "BaseDirectory" JSON..= baseDirectory,
                            "LocalProfileId" JSON..= localProfileId,
                            "PartnerProfileId" JSON..= partnerProfileId,
                            "ServerId" JSON..= serverId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Agreement where
  toJSON Agreement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessRole" JSON..= accessRole,
               "BaseDirectory" JSON..= baseDirectory,
               "LocalProfileId" JSON..= localProfileId,
               "PartnerProfileId" JSON..= partnerProfileId,
               "ServerId" JSON..= serverId]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessRole" Agreement where
  type PropertyType "AccessRole" Agreement = Value Prelude.Text
  set newValue Agreement {..} = Agreement {accessRole = newValue, ..}
instance Property "BaseDirectory" Agreement where
  type PropertyType "BaseDirectory" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {baseDirectory = newValue, ..}
instance Property "Description" Agreement where
  type PropertyType "Description" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {description = Prelude.pure newValue, ..}
instance Property "LocalProfileId" Agreement where
  type PropertyType "LocalProfileId" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {localProfileId = newValue, ..}
instance Property "PartnerProfileId" Agreement where
  type PropertyType "PartnerProfileId" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {partnerProfileId = newValue, ..}
instance Property "ServerId" Agreement where
  type PropertyType "ServerId" Agreement = Value Prelude.Text
  set newValue Agreement {..} = Agreement {serverId = newValue, ..}
instance Property "Status" Agreement where
  type PropertyType "Status" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {status = Prelude.pure newValue, ..}
instance Property "Tags" Agreement where
  type PropertyType "Tags" Agreement = [Tag]
  set newValue Agreement {..}
    = Agreement {tags = Prelude.pure newValue, ..}