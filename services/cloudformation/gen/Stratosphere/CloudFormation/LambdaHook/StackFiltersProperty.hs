module Stratosphere.CloudFormation.LambdaHook.StackFiltersProperty (
        module Exports, StackFiltersProperty(..), mkStackFiltersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudFormation.LambdaHook.StackNamesProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudFormation.LambdaHook.StackRolesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StackFiltersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackfilters.html>
    StackFiltersProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackfilters.html#cfn-cloudformation-lambdahook-stackfilters-filteringcriteria>
                          filteringCriteria :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackfilters.html#cfn-cloudformation-lambdahook-stackfilters-stacknames>
                          stackNames :: (Prelude.Maybe StackNamesProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudformation-lambdahook-stackfilters.html#cfn-cloudformation-lambdahook-stackfilters-stackroles>
                          stackRoles :: (Prelude.Maybe StackRolesProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStackFiltersProperty ::
  Value Prelude.Text -> StackFiltersProperty
mkStackFiltersProperty filteringCriteria
  = StackFiltersProperty
      {haddock_workaround_ = (), filteringCriteria = filteringCriteria,
       stackNames = Prelude.Nothing, stackRoles = Prelude.Nothing}
instance ToResourceProperties StackFiltersProperty where
  toResourceProperties StackFiltersProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFormation::LambdaHook.StackFilters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilteringCriteria" JSON..= filteringCriteria]
                           (Prelude.catMaybes
                              [(JSON..=) "StackNames" Prelude.<$> stackNames,
                               (JSON..=) "StackRoles" Prelude.<$> stackRoles]))}
instance JSON.ToJSON StackFiltersProperty where
  toJSON StackFiltersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FilteringCriteria" JSON..= filteringCriteria]
              (Prelude.catMaybes
                 [(JSON..=) "StackNames" Prelude.<$> stackNames,
                  (JSON..=) "StackRoles" Prelude.<$> stackRoles])))
instance Property "FilteringCriteria" StackFiltersProperty where
  type PropertyType "FilteringCriteria" StackFiltersProperty = Value Prelude.Text
  set newValue StackFiltersProperty {..}
    = StackFiltersProperty {filteringCriteria = newValue, ..}
instance Property "StackNames" StackFiltersProperty where
  type PropertyType "StackNames" StackFiltersProperty = StackNamesProperty
  set newValue StackFiltersProperty {..}
    = StackFiltersProperty {stackNames = Prelude.pure newValue, ..}
instance Property "StackRoles" StackFiltersProperty where
  type PropertyType "StackRoles" StackFiltersProperty = StackRolesProperty
  set newValue StackFiltersProperty {..}
    = StackFiltersProperty {stackRoles = Prelude.pure newValue, ..}