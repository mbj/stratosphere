module Stratosphere.Macie.FindingsFilter.CriterionAdditionalPropertiesProperty (
        CriterionAdditionalPropertiesProperty(..),
        mkCriterionAdditionalPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CriterionAdditionalPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html>
    CriterionAdditionalPropertiesProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-eq>
                                           eq :: (Prelude.Maybe (ValueList Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-gt>
                                           gt :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-gte>
                                           gte :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-lt>
                                           lt :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-lte>
                                           lte :: (Prelude.Maybe (Value Prelude.Integer)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-criterionadditionalproperties.html#cfn-macie-findingsfilter-criterionadditionalproperties-neq>
                                           neq :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCriterionAdditionalPropertiesProperty ::
  CriterionAdditionalPropertiesProperty
mkCriterionAdditionalPropertiesProperty
  = CriterionAdditionalPropertiesProperty
      {haddock_workaround_ = (), eq = Prelude.Nothing,
       gt = Prelude.Nothing, gte = Prelude.Nothing, lt = Prelude.Nothing,
       lte = Prelude.Nothing, neq = Prelude.Nothing}
instance ToResourceProperties CriterionAdditionalPropertiesProperty where
  toResourceProperties CriterionAdditionalPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Macie::FindingsFilter.CriterionAdditionalProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "eq" Prelude.<$> eq, (JSON..=) "gt" Prelude.<$> gt,
                            (JSON..=) "gte" Prelude.<$> gte, (JSON..=) "lt" Prelude.<$> lt,
                            (JSON..=) "lte" Prelude.<$> lte, (JSON..=) "neq" Prelude.<$> neq])}
instance JSON.ToJSON CriterionAdditionalPropertiesProperty where
  toJSON CriterionAdditionalPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "eq" Prelude.<$> eq, (JSON..=) "gt" Prelude.<$> gt,
               (JSON..=) "gte" Prelude.<$> gte, (JSON..=) "lt" Prelude.<$> lt,
               (JSON..=) "lte" Prelude.<$> lte, (JSON..=) "neq" Prelude.<$> neq]))
instance Property "eq" CriterionAdditionalPropertiesProperty where
  type PropertyType "eq" CriterionAdditionalPropertiesProperty = ValueList Prelude.Text
  set newValue CriterionAdditionalPropertiesProperty {..}
    = CriterionAdditionalPropertiesProperty
        {eq = Prelude.pure newValue, ..}
instance Property "gt" CriterionAdditionalPropertiesProperty where
  type PropertyType "gt" CriterionAdditionalPropertiesProperty = Value Prelude.Integer
  set newValue CriterionAdditionalPropertiesProperty {..}
    = CriterionAdditionalPropertiesProperty
        {gt = Prelude.pure newValue, ..}
instance Property "gte" CriterionAdditionalPropertiesProperty where
  type PropertyType "gte" CriterionAdditionalPropertiesProperty = Value Prelude.Integer
  set newValue CriterionAdditionalPropertiesProperty {..}
    = CriterionAdditionalPropertiesProperty
        {gte = Prelude.pure newValue, ..}
instance Property "lt" CriterionAdditionalPropertiesProperty where
  type PropertyType "lt" CriterionAdditionalPropertiesProperty = Value Prelude.Integer
  set newValue CriterionAdditionalPropertiesProperty {..}
    = CriterionAdditionalPropertiesProperty
        {lt = Prelude.pure newValue, ..}
instance Property "lte" CriterionAdditionalPropertiesProperty where
  type PropertyType "lte" CriterionAdditionalPropertiesProperty = Value Prelude.Integer
  set newValue CriterionAdditionalPropertiesProperty {..}
    = CriterionAdditionalPropertiesProperty
        {lte = Prelude.pure newValue, ..}
instance Property "neq" CriterionAdditionalPropertiesProperty where
  type PropertyType "neq" CriterionAdditionalPropertiesProperty = ValueList Prelude.Text
  set newValue CriterionAdditionalPropertiesProperty {..}
    = CriterionAdditionalPropertiesProperty
        {neq = Prelude.pure newValue, ..}