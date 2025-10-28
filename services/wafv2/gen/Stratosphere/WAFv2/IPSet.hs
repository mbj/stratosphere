module Stratosphere.WAFv2.IPSet (
        IPSet(..), mkIPSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IPSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html>
    IPSet {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-addresses>
           addresses :: (ValueList Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-description>
           description :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-ipaddressversion>
           iPAddressVersion :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-name>
           name :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-scope>
           scope :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafv2-ipset.html#cfn-wafv2-ipset-tags>
           tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPSet ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> IPSet
mkIPSet addresses iPAddressVersion scope
  = IPSet
      {haddock_workaround_ = (), addresses = addresses,
       iPAddressVersion = iPAddressVersion, scope = scope,
       description = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IPSet where
  toResourceProperties IPSet {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::IPSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Addresses" JSON..= addresses,
                            "IPAddressVersion" JSON..= iPAddressVersion, "Scope" JSON..= scope]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IPSet where
  toJSON IPSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Addresses" JSON..= addresses,
               "IPAddressVersion" JSON..= iPAddressVersion, "Scope" JSON..= scope]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Addresses" IPSet where
  type PropertyType "Addresses" IPSet = ValueList Prelude.Text
  set newValue IPSet {..} = IPSet {addresses = newValue, ..}
instance Property "Description" IPSet where
  type PropertyType "Description" IPSet = Value Prelude.Text
  set newValue IPSet {..}
    = IPSet {description = Prelude.pure newValue, ..}
instance Property "IPAddressVersion" IPSet where
  type PropertyType "IPAddressVersion" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {iPAddressVersion = newValue, ..}
instance Property "Name" IPSet where
  type PropertyType "Name" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {name = Prelude.pure newValue, ..}
instance Property "Scope" IPSet where
  type PropertyType "Scope" IPSet = Value Prelude.Text
  set newValue IPSet {..} = IPSet {scope = newValue, ..}
instance Property "Tags" IPSet where
  type PropertyType "Tags" IPSet = [Tag]
  set newValue IPSet {..} = IPSet {tags = Prelude.pure newValue, ..}