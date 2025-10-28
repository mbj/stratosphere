module Stratosphere.CloudTrail.Trail.AdvancedEventSelectorProperty (
        module Exports, AdvancedEventSelectorProperty(..),
        mkAdvancedEventSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudTrail.Trail.AdvancedFieldSelectorProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedEventSelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedeventselector.html>
    AdvancedEventSelectorProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedeventselector.html#cfn-cloudtrail-trail-advancedeventselector-fieldselectors>
                                   fieldSelectors :: [AdvancedFieldSelectorProperty],
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudtrail-trail-advancedeventselector.html#cfn-cloudtrail-trail-advancedeventselector-name>
                                   name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedEventSelectorProperty ::
  [AdvancedFieldSelectorProperty] -> AdvancedEventSelectorProperty
mkAdvancedEventSelectorProperty fieldSelectors
  = AdvancedEventSelectorProperty
      {haddock_workaround_ = (), fieldSelectors = fieldSelectors,
       name = Prelude.Nothing}
instance ToResourceProperties AdvancedEventSelectorProperty where
  toResourceProperties AdvancedEventSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Trail.AdvancedEventSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldSelectors" JSON..= fieldSelectors]
                           (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name]))}
instance JSON.ToJSON AdvancedEventSelectorProperty where
  toJSON AdvancedEventSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldSelectors" JSON..= fieldSelectors]
              (Prelude.catMaybes [(JSON..=) "Name" Prelude.<$> name])))
instance Property "FieldSelectors" AdvancedEventSelectorProperty where
  type PropertyType "FieldSelectors" AdvancedEventSelectorProperty = [AdvancedFieldSelectorProperty]
  set newValue AdvancedEventSelectorProperty {..}
    = AdvancedEventSelectorProperty {fieldSelectors = newValue, ..}
instance Property "Name" AdvancedEventSelectorProperty where
  type PropertyType "Name" AdvancedEventSelectorProperty = Value Prelude.Text
  set newValue AdvancedEventSelectorProperty {..}
    = AdvancedEventSelectorProperty {name = Prelude.pure newValue, ..}