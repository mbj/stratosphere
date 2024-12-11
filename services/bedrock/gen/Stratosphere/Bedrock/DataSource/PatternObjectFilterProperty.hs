module Stratosphere.Bedrock.DataSource.PatternObjectFilterProperty (
        PatternObjectFilterProperty(..), mkPatternObjectFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PatternObjectFilterProperty
  = PatternObjectFilterProperty {exclusionFilters :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 inclusionFilters :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 objectType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPatternObjectFilterProperty ::
  Value Prelude.Text -> PatternObjectFilterProperty
mkPatternObjectFilterProperty objectType
  = PatternObjectFilterProperty
      {objectType = objectType, exclusionFilters = Prelude.Nothing,
       inclusionFilters = Prelude.Nothing}
instance ToResourceProperties PatternObjectFilterProperty where
  toResourceProperties PatternObjectFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::DataSource.PatternObjectFilter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ObjectType" JSON..= objectType]
                           (Prelude.catMaybes
                              [(JSON..=) "ExclusionFilters" Prelude.<$> exclusionFilters,
                               (JSON..=) "InclusionFilters" Prelude.<$> inclusionFilters]))}
instance JSON.ToJSON PatternObjectFilterProperty where
  toJSON PatternObjectFilterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ObjectType" JSON..= objectType]
              (Prelude.catMaybes
                 [(JSON..=) "ExclusionFilters" Prelude.<$> exclusionFilters,
                  (JSON..=) "InclusionFilters" Prelude.<$> inclusionFilters])))
instance Property "ExclusionFilters" PatternObjectFilterProperty where
  type PropertyType "ExclusionFilters" PatternObjectFilterProperty = ValueList Prelude.Text
  set newValue PatternObjectFilterProperty {..}
    = PatternObjectFilterProperty
        {exclusionFilters = Prelude.pure newValue, ..}
instance Property "InclusionFilters" PatternObjectFilterProperty where
  type PropertyType "InclusionFilters" PatternObjectFilterProperty = ValueList Prelude.Text
  set newValue PatternObjectFilterProperty {..}
    = PatternObjectFilterProperty
        {inclusionFilters = Prelude.pure newValue, ..}
instance Property "ObjectType" PatternObjectFilterProperty where
  type PropertyType "ObjectType" PatternObjectFilterProperty = Value Prelude.Text
  set newValue PatternObjectFilterProperty {..}
    = PatternObjectFilterProperty {objectType = newValue, ..}