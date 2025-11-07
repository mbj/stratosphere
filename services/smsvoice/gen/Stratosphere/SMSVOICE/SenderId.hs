module Stratosphere.SMSVOICE.SenderId (
        SenderId(..), mkSenderId
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data SenderId
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-senderid.html>
    SenderId {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-senderid.html#cfn-smsvoice-senderid-deletionprotectionenabled>
              deletionProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-senderid.html#cfn-smsvoice-senderid-isocountrycode>
              isoCountryCode :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-senderid.html#cfn-smsvoice-senderid-senderid>
              senderId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-smsvoice-senderid.html#cfn-smsvoice-senderid-tags>
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSenderId :: Value Prelude.Text -> Value Prelude.Text -> SenderId
mkSenderId isoCountryCode senderId
  = SenderId
      {haddock_workaround_ = (), isoCountryCode = isoCountryCode,
       senderId = senderId, deletionProtectionEnabled = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties SenderId where
  toResourceProperties SenderId {..}
    = ResourceProperties
        {awsType = "AWS::SMSVOICE::SenderId", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IsoCountryCode" JSON..= isoCountryCode,
                            "SenderId" JSON..= senderId]
                           (Prelude.catMaybes
                              [(JSON..=) "DeletionProtectionEnabled"
                                 Prelude.<$> deletionProtectionEnabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON SenderId where
  toJSON SenderId {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IsoCountryCode" JSON..= isoCountryCode,
               "SenderId" JSON..= senderId]
              (Prelude.catMaybes
                 [(JSON..=) "DeletionProtectionEnabled"
                    Prelude.<$> deletionProtectionEnabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "DeletionProtectionEnabled" SenderId where
  type PropertyType "DeletionProtectionEnabled" SenderId = Value Prelude.Bool
  set newValue SenderId {..}
    = SenderId {deletionProtectionEnabled = Prelude.pure newValue, ..}
instance Property "IsoCountryCode" SenderId where
  type PropertyType "IsoCountryCode" SenderId = Value Prelude.Text
  set newValue SenderId {..}
    = SenderId {isoCountryCode = newValue, ..}
instance Property "SenderId" SenderId where
  type PropertyType "SenderId" SenderId = Value Prelude.Text
  set newValue SenderId {..} = SenderId {senderId = newValue, ..}
instance Property "Tags" SenderId where
  type PropertyType "Tags" SenderId = [Tag]
  set newValue SenderId {..}
    = SenderId {tags = Prelude.pure newValue, ..}