module Stratosphere.CustomerProfiles.Domain.AttributeTypesSelectorProperty (
        AttributeTypesSelectorProperty(..),
        mkAttributeTypesSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeTypesSelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html>
    AttributeTypesSelectorProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-address>
                                    address :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-attributematchingmodel>
                                    attributeMatchingModel :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-emailaddress>
                                    emailAddress :: (Prelude.Maybe (ValueList Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-attributetypesselector.html#cfn-customerprofiles-domain-attributetypesselector-phonenumber>
                                    phoneNumber :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeTypesSelectorProperty ::
  Value Prelude.Text -> AttributeTypesSelectorProperty
mkAttributeTypesSelectorProperty attributeMatchingModel
  = AttributeTypesSelectorProperty
      {haddock_workaround_ = (),
       attributeMatchingModel = attributeMatchingModel,
       address = Prelude.Nothing, emailAddress = Prelude.Nothing,
       phoneNumber = Prelude.Nothing}
instance ToResourceProperties AttributeTypesSelectorProperty where
  toResourceProperties AttributeTypesSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.AttributeTypesSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeMatchingModel" JSON..= attributeMatchingModel]
                           (Prelude.catMaybes
                              [(JSON..=) "Address" Prelude.<$> address,
                               (JSON..=) "EmailAddress" Prelude.<$> emailAddress,
                               (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber]))}
instance JSON.ToJSON AttributeTypesSelectorProperty where
  toJSON AttributeTypesSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeMatchingModel" JSON..= attributeMatchingModel]
              (Prelude.catMaybes
                 [(JSON..=) "Address" Prelude.<$> address,
                  (JSON..=) "EmailAddress" Prelude.<$> emailAddress,
                  (JSON..=) "PhoneNumber" Prelude.<$> phoneNumber])))
instance Property "Address" AttributeTypesSelectorProperty where
  type PropertyType "Address" AttributeTypesSelectorProperty = ValueList Prelude.Text
  set newValue AttributeTypesSelectorProperty {..}
    = AttributeTypesSelectorProperty
        {address = Prelude.pure newValue, ..}
instance Property "AttributeMatchingModel" AttributeTypesSelectorProperty where
  type PropertyType "AttributeMatchingModel" AttributeTypesSelectorProperty = Value Prelude.Text
  set newValue AttributeTypesSelectorProperty {..}
    = AttributeTypesSelectorProperty
        {attributeMatchingModel = newValue, ..}
instance Property "EmailAddress" AttributeTypesSelectorProperty where
  type PropertyType "EmailAddress" AttributeTypesSelectorProperty = ValueList Prelude.Text
  set newValue AttributeTypesSelectorProperty {..}
    = AttributeTypesSelectorProperty
        {emailAddress = Prelude.pure newValue, ..}
instance Property "PhoneNumber" AttributeTypesSelectorProperty where
  type PropertyType "PhoneNumber" AttributeTypesSelectorProperty = ValueList Prelude.Text
  set newValue AttributeTypesSelectorProperty {..}
    = AttributeTypesSelectorProperty
        {phoneNumber = Prelude.pure newValue, ..}