module Stratosphere.Detective.MemberInvitation (
        MemberInvitation(..), mkMemberInvitation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemberInvitation
  = MemberInvitation {disableEmailNotification :: (Prelude.Maybe (Value Prelude.Bool)),
                      graphArn :: (Value Prelude.Text),
                      memberEmailAddress :: (Value Prelude.Text),
                      memberId :: (Value Prelude.Text),
                      message :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberInvitation ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> MemberInvitation
mkMemberInvitation graphArn memberEmailAddress memberId
  = MemberInvitation
      {graphArn = graphArn, memberEmailAddress = memberEmailAddress,
       memberId = memberId, disableEmailNotification = Prelude.Nothing,
       message = Prelude.Nothing}
instance ToResourceProperties MemberInvitation where
  toResourceProperties MemberInvitation {..}
    = ResourceProperties
        {awsType = "AWS::Detective::MemberInvitation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GraphArn" JSON..= graphArn,
                            "MemberEmailAddress" JSON..= memberEmailAddress,
                            "MemberId" JSON..= memberId]
                           (Prelude.catMaybes
                              [(JSON..=) "DisableEmailNotification"
                                 Prelude.<$> disableEmailNotification,
                               (JSON..=) "Message" Prelude.<$> message]))}
instance JSON.ToJSON MemberInvitation where
  toJSON MemberInvitation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GraphArn" JSON..= graphArn,
               "MemberEmailAddress" JSON..= memberEmailAddress,
               "MemberId" JSON..= memberId]
              (Prelude.catMaybes
                 [(JSON..=) "DisableEmailNotification"
                    Prelude.<$> disableEmailNotification,
                  (JSON..=) "Message" Prelude.<$> message])))
instance Property "DisableEmailNotification" MemberInvitation where
  type PropertyType "DisableEmailNotification" MemberInvitation = Value Prelude.Bool
  set newValue MemberInvitation {..}
    = MemberInvitation
        {disableEmailNotification = Prelude.pure newValue, ..}
instance Property "GraphArn" MemberInvitation where
  type PropertyType "GraphArn" MemberInvitation = Value Prelude.Text
  set newValue MemberInvitation {..}
    = MemberInvitation {graphArn = newValue, ..}
instance Property "MemberEmailAddress" MemberInvitation where
  type PropertyType "MemberEmailAddress" MemberInvitation = Value Prelude.Text
  set newValue MemberInvitation {..}
    = MemberInvitation {memberEmailAddress = newValue, ..}
instance Property "MemberId" MemberInvitation where
  type PropertyType "MemberId" MemberInvitation = Value Prelude.Text
  set newValue MemberInvitation {..}
    = MemberInvitation {memberId = newValue, ..}
instance Property "Message" MemberInvitation where
  type PropertyType "Message" MemberInvitation = Value Prelude.Text
  set newValue MemberInvitation {..}
    = MemberInvitation {message = Prelude.pure newValue, ..}