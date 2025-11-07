module Stratosphere.SES.MailManagerTrafficPolicy.IngressIsInAddressListProperty (
        IngressIsInAddressListProperty(..),
        mkIngressIsInAddressListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressIsInAddressListProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressisinaddresslist.html>
    IngressIsInAddressListProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressisinaddresslist.html#cfn-ses-mailmanagertrafficpolicy-ingressisinaddresslist-addresslists>
                                    addressLists :: (ValueList Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ses-mailmanagertrafficpolicy-ingressisinaddresslist.html#cfn-ses-mailmanagertrafficpolicy-ingressisinaddresslist-attribute>
                                    attribute :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIngressIsInAddressListProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> IngressIsInAddressListProperty
mkIngressIsInAddressListProperty addressLists attribute
  = IngressIsInAddressListProperty
      {haddock_workaround_ = (), addressLists = addressLists,
       attribute = attribute}
instance ToResourceProperties IngressIsInAddressListProperty where
  toResourceProperties IngressIsInAddressListProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::MailManagerTrafficPolicy.IngressIsInAddressList",
         supportsTags = Prelude.False,
         properties = ["AddressLists" JSON..= addressLists,
                       "Attribute" JSON..= attribute]}
instance JSON.ToJSON IngressIsInAddressListProperty where
  toJSON IngressIsInAddressListProperty {..}
    = JSON.object
        ["AddressLists" JSON..= addressLists,
         "Attribute" JSON..= attribute]
instance Property "AddressLists" IngressIsInAddressListProperty where
  type PropertyType "AddressLists" IngressIsInAddressListProperty = ValueList Prelude.Text
  set newValue IngressIsInAddressListProperty {..}
    = IngressIsInAddressListProperty {addressLists = newValue, ..}
instance Property "Attribute" IngressIsInAddressListProperty where
  type PropertyType "Attribute" IngressIsInAddressListProperty = Value Prelude.Text
  set newValue IngressIsInAddressListProperty {..}
    = IngressIsInAddressListProperty {attribute = newValue, ..}