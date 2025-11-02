module Stratosphere.CleanRooms.Collaboration.MemberSpecificationProperty (
        module Exports, MemberSpecificationProperty(..),
        mkMemberSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.Collaboration.PaymentConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MemberSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-memberspecification.html>
    MemberSpecificationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-memberspecification.html#cfn-cleanrooms-collaboration-memberspecification-accountid>
                                 accountId :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-memberspecification.html#cfn-cleanrooms-collaboration-memberspecification-displayname>
                                 displayName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-memberspecification.html#cfn-cleanrooms-collaboration-memberspecification-memberabilities>
                                 memberAbilities :: (ValueList Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-collaboration-memberspecification.html#cfn-cleanrooms-collaboration-memberspecification-paymentconfiguration>
                                 paymentConfiguration :: (Prelude.Maybe PaymentConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMemberSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text -> MemberSpecificationProperty
mkMemberSpecificationProperty accountId displayName memberAbilities
  = MemberSpecificationProperty
      {haddock_workaround_ = (), accountId = accountId,
       displayName = displayName, memberAbilities = memberAbilities,
       paymentConfiguration = Prelude.Nothing}
instance ToResourceProperties MemberSpecificationProperty where
  toResourceProperties MemberSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::Collaboration.MemberSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountId" JSON..= accountId, "DisplayName" JSON..= displayName,
                            "MemberAbilities" JSON..= memberAbilities]
                           (Prelude.catMaybes
                              [(JSON..=) "PaymentConfiguration"
                                 Prelude.<$> paymentConfiguration]))}
instance JSON.ToJSON MemberSpecificationProperty where
  toJSON MemberSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountId" JSON..= accountId, "DisplayName" JSON..= displayName,
               "MemberAbilities" JSON..= memberAbilities]
              (Prelude.catMaybes
                 [(JSON..=) "PaymentConfiguration"
                    Prelude.<$> paymentConfiguration])))
instance Property "AccountId" MemberSpecificationProperty where
  type PropertyType "AccountId" MemberSpecificationProperty = Value Prelude.Text
  set newValue MemberSpecificationProperty {..}
    = MemberSpecificationProperty {accountId = newValue, ..}
instance Property "DisplayName" MemberSpecificationProperty where
  type PropertyType "DisplayName" MemberSpecificationProperty = Value Prelude.Text
  set newValue MemberSpecificationProperty {..}
    = MemberSpecificationProperty {displayName = newValue, ..}
instance Property "MemberAbilities" MemberSpecificationProperty where
  type PropertyType "MemberAbilities" MemberSpecificationProperty = ValueList Prelude.Text
  set newValue MemberSpecificationProperty {..}
    = MemberSpecificationProperty {memberAbilities = newValue, ..}
instance Property "PaymentConfiguration" MemberSpecificationProperty where
  type PropertyType "PaymentConfiguration" MemberSpecificationProperty = PaymentConfigurationProperty
  set newValue MemberSpecificationProperty {..}
    = MemberSpecificationProperty
        {paymentConfiguration = Prelude.pure newValue, ..}