module Stratosphere.SES.MailManagerRuleSet.RuleIsInAddressListProperty (
        RuleIsInAddressListProperty(..), mkRuleIsInAddressListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleIsInAddressListProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleisinaddresslist.html>
    RuleIsInAddressListProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleisinaddresslist.html#cfn-ses-mailmanagerruleset-ruleisinaddresslist-addresslists>
                                 addressLists :: (ValueList Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagerruleset-ruleisinaddresslist.html#cfn-ses-mailmanagerruleset-ruleisinaddresslist-attribute>
                                 attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleIsInAddressListProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> RuleIsInAddressListProperty
mkRuleIsInAddressListProperty addressLists attribute
  = RuleIsInAddressListProperty
      {haddock_workaround_ = (), addressLists = addressLists,
       attribute = attribute}
instance ToResourceProperties RuleIsInAddressListProperty where
  toResourceProperties RuleIsInAddressListProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerRuleSet.RuleIsInAddressList",
         supportsTags = Prelude.False,
         properties = ["AddressLists" JSON..= addressLists,
                       "Attribute" JSON..= attribute]}
instance JSON.ToJSON RuleIsInAddressListProperty where
  toJSON RuleIsInAddressListProperty {..}
    = JSON.object
        ["AddressLists" JSON..= addressLists,
         "Attribute" JSON..= attribute]
instance Property "AddressLists" RuleIsInAddressListProperty where
  type PropertyType "AddressLists" RuleIsInAddressListProperty = ValueList Prelude.Text
  set newValue RuleIsInAddressListProperty {..}
    = RuleIsInAddressListProperty {addressLists = newValue, ..}
instance Property "Attribute" RuleIsInAddressListProperty where
  type PropertyType "Attribute" RuleIsInAddressListProperty = Value Prelude.Text
  set newValue RuleIsInAddressListProperty {..}
    = RuleIsInAddressListProperty {attribute = newValue, ..}