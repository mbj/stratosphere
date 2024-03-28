module Stratosphere.CleanRooms.Membership (
        module Exports, Membership(..), mkMembership
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipPaymentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.Membership.MembershipProtectedQueryResultConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Membership
  = Membership {collaborationIdentifier :: (Value Prelude.Text),
                defaultResultConfiguration :: (Prelude.Maybe MembershipProtectedQueryResultConfigurationProperty),
                paymentConfiguration :: (Prelude.Maybe MembershipPaymentConfigurationProperty),
                queryLogStatus :: (Value Prelude.Text),
                tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMembership ::
  Value Prelude.Text -> Value Prelude.Text -> Membership
mkMembership collaborationIdentifier queryLogStatus
  = Membership
      {collaborationIdentifier = collaborationIdentifier,
       queryLogStatus = queryLogStatus,
       defaultResultConfiguration = Prelude.Nothing,
       paymentConfiguration = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Membership where
  toResourceProperties Membership {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Membership",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CollaborationIdentifier" JSON..= collaborationIdentifier,
                            "QueryLogStatus" JSON..= queryLogStatus]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultResultConfiguration"
                                 Prelude.<$> defaultResultConfiguration,
                               (JSON..=) "PaymentConfiguration" Prelude.<$> paymentConfiguration,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Membership where
  toJSON Membership {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CollaborationIdentifier" JSON..= collaborationIdentifier,
               "QueryLogStatus" JSON..= queryLogStatus]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultResultConfiguration"
                    Prelude.<$> defaultResultConfiguration,
                  (JSON..=) "PaymentConfiguration" Prelude.<$> paymentConfiguration,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CollaborationIdentifier" Membership where
  type PropertyType "CollaborationIdentifier" Membership = Value Prelude.Text
  set newValue Membership {..}
    = Membership {collaborationIdentifier = newValue, ..}
instance Property "DefaultResultConfiguration" Membership where
  type PropertyType "DefaultResultConfiguration" Membership = MembershipProtectedQueryResultConfigurationProperty
  set newValue Membership {..}
    = Membership
        {defaultResultConfiguration = Prelude.pure newValue, ..}
instance Property "PaymentConfiguration" Membership where
  type PropertyType "PaymentConfiguration" Membership = MembershipPaymentConfigurationProperty
  set newValue Membership {..}
    = Membership {paymentConfiguration = Prelude.pure newValue, ..}
instance Property "QueryLogStatus" Membership where
  type PropertyType "QueryLogStatus" Membership = Value Prelude.Text
  set newValue Membership {..}
    = Membership {queryLogStatus = newValue, ..}
instance Property "Tags" Membership where
  type PropertyType "Tags" Membership = [Tag]
  set newValue Membership {..}
    = Membership {tags = Prelude.pure newValue, ..}