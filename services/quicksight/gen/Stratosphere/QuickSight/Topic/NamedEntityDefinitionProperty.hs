module Stratosphere.QuickSight.Topic.NamedEntityDefinitionProperty (
        module Exports, NamedEntityDefinitionProperty(..),
        mkNamedEntityDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.NamedEntityDefinitionMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamedEntityDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-namedentitydefinition.html>
    NamedEntityDefinitionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-namedentitydefinition.html#cfn-quicksight-topic-namedentitydefinition-fieldname>
                                   fieldName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-namedentitydefinition.html#cfn-quicksight-topic-namedentitydefinition-metric>
                                   metric :: (Prelude.Maybe NamedEntityDefinitionMetricProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-namedentitydefinition.html#cfn-quicksight-topic-namedentitydefinition-propertyname>
                                   propertyName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-namedentitydefinition.html#cfn-quicksight-topic-namedentitydefinition-propertyrole>
                                   propertyRole :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-topic-namedentitydefinition.html#cfn-quicksight-topic-namedentitydefinition-propertyusage>
                                   propertyUsage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamedEntityDefinitionProperty :: NamedEntityDefinitionProperty
mkNamedEntityDefinitionProperty
  = NamedEntityDefinitionProperty
      {haddock_workaround_ = (), fieldName = Prelude.Nothing,
       metric = Prelude.Nothing, propertyName = Prelude.Nothing,
       propertyRole = Prelude.Nothing, propertyUsage = Prelude.Nothing}
instance ToResourceProperties NamedEntityDefinitionProperty where
  toResourceProperties NamedEntityDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.NamedEntityDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldName" Prelude.<$> fieldName,
                            (JSON..=) "Metric" Prelude.<$> metric,
                            (JSON..=) "PropertyName" Prelude.<$> propertyName,
                            (JSON..=) "PropertyRole" Prelude.<$> propertyRole,
                            (JSON..=) "PropertyUsage" Prelude.<$> propertyUsage])}
instance JSON.ToJSON NamedEntityDefinitionProperty where
  toJSON NamedEntityDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldName" Prelude.<$> fieldName,
               (JSON..=) "Metric" Prelude.<$> metric,
               (JSON..=) "PropertyName" Prelude.<$> propertyName,
               (JSON..=) "PropertyRole" Prelude.<$> propertyRole,
               (JSON..=) "PropertyUsage" Prelude.<$> propertyUsage]))
instance Property "FieldName" NamedEntityDefinitionProperty where
  type PropertyType "FieldName" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {fieldName = Prelude.pure newValue, ..}
instance Property "Metric" NamedEntityDefinitionProperty where
  type PropertyType "Metric" NamedEntityDefinitionProperty = NamedEntityDefinitionMetricProperty
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {metric = Prelude.pure newValue, ..}
instance Property "PropertyName" NamedEntityDefinitionProperty where
  type PropertyType "PropertyName" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {propertyName = Prelude.pure newValue, ..}
instance Property "PropertyRole" NamedEntityDefinitionProperty where
  type PropertyType "PropertyRole" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {propertyRole = Prelude.pure newValue, ..}
instance Property "PropertyUsage" NamedEntityDefinitionProperty where
  type PropertyType "PropertyUsage" NamedEntityDefinitionProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionProperty {..}
    = NamedEntityDefinitionProperty
        {propertyUsage = Prelude.pure newValue, ..}