module Stratosphere.GuardDuty.Member (
        Member(..), mkMember
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Member
  = Member {detectorId :: (Value Prelude.Text),
            disableEmailNotification :: (Prelude.Maybe (Value Prelude.Bool)),
            email :: (Value Prelude.Text),
            memberId :: (Value Prelude.Text),
            message :: (Prelude.Maybe (Value Prelude.Text)),
            status :: (Prelude.Maybe (Value Prelude.Text))}
mkMember ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Member
mkMember detectorId email memberId
  = Member
      {detectorId = detectorId, email = email, memberId = memberId,
       disableEmailNotification = Prelude.Nothing,
       message = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties Member where
  toResourceProperties Member {..}
    = ResourceProperties
        {awsType = "AWS::GuardDuty::Member", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DetectorId" JSON..= detectorId, "Email" JSON..= email,
                            "MemberId" JSON..= memberId]
                           (Prelude.catMaybes
                              [(JSON..=) "DisableEmailNotification"
                                 Prelude.<$> disableEmailNotification,
                               (JSON..=) "Message" Prelude.<$> message,
                               (JSON..=) "Status" Prelude.<$> status]))}
instance JSON.ToJSON Member where
  toJSON Member {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DetectorId" JSON..= detectorId, "Email" JSON..= email,
               "MemberId" JSON..= memberId]
              (Prelude.catMaybes
                 [(JSON..=) "DisableEmailNotification"
                    Prelude.<$> disableEmailNotification,
                  (JSON..=) "Message" Prelude.<$> message,
                  (JSON..=) "Status" Prelude.<$> status])))
instance Property "DetectorId" Member where
  type PropertyType "DetectorId" Member = Value Prelude.Text
  set newValue Member {..} = Member {detectorId = newValue, ..}
instance Property "DisableEmailNotification" Member where
  type PropertyType "DisableEmailNotification" Member = Value Prelude.Bool
  set newValue Member {..}
    = Member {disableEmailNotification = Prelude.pure newValue, ..}
instance Property "Email" Member where
  type PropertyType "Email" Member = Value Prelude.Text
  set newValue Member {..} = Member {email = newValue, ..}
instance Property "MemberId" Member where
  type PropertyType "MemberId" Member = Value Prelude.Text
  set newValue Member {..} = Member {memberId = newValue, ..}
instance Property "Message" Member where
  type PropertyType "Message" Member = Value Prelude.Text
  set newValue Member {..}
    = Member {message = Prelude.pure newValue, ..}
instance Property "Status" Member where
  type PropertyType "Status" Member = Value Prelude.Text
  set newValue Member {..}
    = Member {status = Prelude.pure newValue, ..}