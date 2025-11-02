module Stratosphere.CustomerProfiles.CalculatedAttributeDefinition (
        module Exports, CalculatedAttributeDefinition(..),
        mkCalculatedAttributeDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.AttributeDetailsProperty as Exports
import {-# SOURCE #-} Stratosphere.CustomerProfiles.CalculatedAttributeDefinition.ConditionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data CalculatedAttributeDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html>
    CalculatedAttributeDefinition {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-attributedetails>
                                   attributeDetails :: AttributeDetailsProperty,
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-calculatedattributename>
                                   calculatedAttributeName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-conditions>
                                   conditions :: (Prelude.Maybe ConditionsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-description>
                                   description :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-displayname>
                                   displayName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-domainname>
                                   domainName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-statistic>
                                   statistic :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-customerprofiles-calculatedattributedefinition.html#cfn-customerprofiles-calculatedattributedefinition-tags>
                                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedAttributeDefinition ::
  AttributeDetailsProperty
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> CalculatedAttributeDefinition
mkCalculatedAttributeDefinition
  attributeDetails
  calculatedAttributeName
  domainName
  statistic
  = CalculatedAttributeDefinition
      {haddock_workaround_ = (), attributeDetails = attributeDetails,
       calculatedAttributeName = calculatedAttributeName,
       domainName = domainName, statistic = statistic,
       conditions = Prelude.Nothing, description = Prelude.Nothing,
       displayName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties CalculatedAttributeDefinition where
  toResourceProperties CalculatedAttributeDefinition {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::CalculatedAttributeDefinition",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttributeDetails" JSON..= attributeDetails,
                            "CalculatedAttributeName" JSON..= calculatedAttributeName,
                            "DomainName" JSON..= domainName, "Statistic" JSON..= statistic]
                           (Prelude.catMaybes
                              [(JSON..=) "Conditions" Prelude.<$> conditions,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisplayName" Prelude.<$> displayName,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CalculatedAttributeDefinition where
  toJSON CalculatedAttributeDefinition {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttributeDetails" JSON..= attributeDetails,
               "CalculatedAttributeName" JSON..= calculatedAttributeName,
               "DomainName" JSON..= domainName, "Statistic" JSON..= statistic]
              (Prelude.catMaybes
                 [(JSON..=) "Conditions" Prelude.<$> conditions,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisplayName" Prelude.<$> displayName,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AttributeDetails" CalculatedAttributeDefinition where
  type PropertyType "AttributeDetails" CalculatedAttributeDefinition = AttributeDetailsProperty
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition {attributeDetails = newValue, ..}
instance Property "CalculatedAttributeName" CalculatedAttributeDefinition where
  type PropertyType "CalculatedAttributeName" CalculatedAttributeDefinition = Value Prelude.Text
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition
        {calculatedAttributeName = newValue, ..}
instance Property "Conditions" CalculatedAttributeDefinition where
  type PropertyType "Conditions" CalculatedAttributeDefinition = ConditionsProperty
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition
        {conditions = Prelude.pure newValue, ..}
instance Property "Description" CalculatedAttributeDefinition where
  type PropertyType "Description" CalculatedAttributeDefinition = Value Prelude.Text
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition
        {description = Prelude.pure newValue, ..}
instance Property "DisplayName" CalculatedAttributeDefinition where
  type PropertyType "DisplayName" CalculatedAttributeDefinition = Value Prelude.Text
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition
        {displayName = Prelude.pure newValue, ..}
instance Property "DomainName" CalculatedAttributeDefinition where
  type PropertyType "DomainName" CalculatedAttributeDefinition = Value Prelude.Text
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition {domainName = newValue, ..}
instance Property "Statistic" CalculatedAttributeDefinition where
  type PropertyType "Statistic" CalculatedAttributeDefinition = Value Prelude.Text
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition {statistic = newValue, ..}
instance Property "Tags" CalculatedAttributeDefinition where
  type PropertyType "Tags" CalculatedAttributeDefinition = [Tag]
  set newValue CalculatedAttributeDefinition {..}
    = CalculatedAttributeDefinition {tags = Prelude.pure newValue, ..}