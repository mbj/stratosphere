module Stratosphere.Glue.Trigger.PredicateProperty (
        module Exports, PredicateProperty(..), mkPredicateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.Trigger.ConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredicateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html>
    PredicateProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html#cfn-glue-trigger-predicate-conditions>
                       conditions :: (Prelude.Maybe [ConditionProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-trigger-predicate.html#cfn-glue-trigger-predicate-logical>
                       logical :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredicateProperty :: PredicateProperty
mkPredicateProperty
  = PredicateProperty
      {haddock_workaround_ = (), conditions = Prelude.Nothing,
       logical = Prelude.Nothing}
instance ToResourceProperties PredicateProperty where
  toResourceProperties PredicateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Trigger.Predicate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Conditions" Prelude.<$> conditions,
                            (JSON..=) "Logical" Prelude.<$> logical])}
instance JSON.ToJSON PredicateProperty where
  toJSON PredicateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Conditions" Prelude.<$> conditions,
               (JSON..=) "Logical" Prelude.<$> logical]))
instance Property "Conditions" PredicateProperty where
  type PropertyType "Conditions" PredicateProperty = [ConditionProperty]
  set newValue PredicateProperty {..}
    = PredicateProperty {conditions = Prelude.pure newValue, ..}
instance Property "Logical" PredicateProperty where
  type PropertyType "Logical" PredicateProperty = Value Prelude.Text
  set newValue PredicateProperty {..}
    = PredicateProperty {logical = Prelude.pure newValue, ..}