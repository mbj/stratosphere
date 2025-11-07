module Stratosphere.Transfer.Agreement (
        module Exports, Agreement(..), mkAgreement
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Agreement.CustomDirectoriesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Agreement
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html>
    Agreement {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-accessrole>
               accessRole :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-basedirectory>
               baseDirectory :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-customdirectories>
               customDirectories :: (Prelude.Maybe CustomDirectoriesProperty),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-enforcemessagesigning>
               enforceMessageSigning :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-localprofileid>
               localProfileId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-partnerprofileid>
               partnerProfileId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-preservefilename>
               preserveFilename :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-serverid>
               serverId :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-status>
               status :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-agreement.html#cfn-transfer-agreement-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAgreement ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Text -> Agreement
mkAgreement accessRole localProfileId partnerProfileId serverId
  = Agreement
      {haddock_workaround_ = (), accessRole = accessRole,
       localProfileId = localProfileId,
       partnerProfileId = partnerProfileId, serverId = serverId,
       baseDirectory = Prelude.Nothing,
       customDirectories = Prelude.Nothing, description = Prelude.Nothing,
       enforceMessageSigning = Prelude.Nothing,
       preserveFilename = Prelude.Nothing, status = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Agreement where
  toResourceProperties Agreement {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Agreement", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccessRole" JSON..= accessRole,
                            "LocalProfileId" JSON..= localProfileId,
                            "PartnerProfileId" JSON..= partnerProfileId,
                            "ServerId" JSON..= serverId]
                           (Prelude.catMaybes
                              [(JSON..=) "BaseDirectory" Prelude.<$> baseDirectory,
                               (JSON..=) "CustomDirectories" Prelude.<$> customDirectories,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EnforceMessageSigning"
                                 Prelude.<$> enforceMessageSigning,
                               (JSON..=) "PreserveFilename" Prelude.<$> preserveFilename,
                               (JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Agreement where
  toJSON Agreement {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccessRole" JSON..= accessRole,
               "LocalProfileId" JSON..= localProfileId,
               "PartnerProfileId" JSON..= partnerProfileId,
               "ServerId" JSON..= serverId]
              (Prelude.catMaybes
                 [(JSON..=) "BaseDirectory" Prelude.<$> baseDirectory,
                  (JSON..=) "CustomDirectories" Prelude.<$> customDirectories,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EnforceMessageSigning"
                    Prelude.<$> enforceMessageSigning,
                  (JSON..=) "PreserveFilename" Prelude.<$> preserveFilename,
                  (JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessRole" Agreement where
  type PropertyType "AccessRole" Agreement = Value Prelude.Text
  set newValue Agreement {..} = Agreement {accessRole = newValue, ..}
instance Property "BaseDirectory" Agreement where
  type PropertyType "BaseDirectory" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {baseDirectory = Prelude.pure newValue, ..}
instance Property "CustomDirectories" Agreement where
  type PropertyType "CustomDirectories" Agreement = CustomDirectoriesProperty
  set newValue Agreement {..}
    = Agreement {customDirectories = Prelude.pure newValue, ..}
instance Property "Description" Agreement where
  type PropertyType "Description" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {description = Prelude.pure newValue, ..}
instance Property "EnforceMessageSigning" Agreement where
  type PropertyType "EnforceMessageSigning" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {enforceMessageSigning = Prelude.pure newValue, ..}
instance Property "LocalProfileId" Agreement where
  type PropertyType "LocalProfileId" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {localProfileId = newValue, ..}
instance Property "PartnerProfileId" Agreement where
  type PropertyType "PartnerProfileId" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {partnerProfileId = newValue, ..}
instance Property "PreserveFilename" Agreement where
  type PropertyType "PreserveFilename" Agreement = Value Prelude.Text
  set newValue Agreement {..}
    = Agreement {preserveFilename = Prelude.pure newValue, ..}
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