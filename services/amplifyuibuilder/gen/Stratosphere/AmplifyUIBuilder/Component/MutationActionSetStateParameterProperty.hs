module Stratosphere.AmplifyUIBuilder.Component.MutationActionSetStateParameterProperty (
        module Exports, MutationActionSetStateParameterProperty(..),
        mkMutationActionSetStateParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AmplifyUIBuilder.Component.ComponentPropertyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MutationActionSetStateParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-mutationactionsetstateparameter.html>
    MutationActionSetStateParameterProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-mutationactionsetstateparameter.html#cfn-amplifyuibuilder-component-mutationactionsetstateparameter-componentname>
                                             componentName :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-mutationactionsetstateparameter.html#cfn-amplifyuibuilder-component-mutationactionsetstateparameter-property>
                                             property :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amplifyuibuilder-component-mutationactionsetstateparameter.html#cfn-amplifyuibuilder-component-mutationactionsetstateparameter-set>
                                             set' :: ComponentPropertyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMutationActionSetStateParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ComponentPropertyProperty
        -> MutationActionSetStateParameterProperty
mkMutationActionSetStateParameterProperty
  componentName
  property
  set'
  = MutationActionSetStateParameterProperty
      {haddock_workaround_ = (), componentName = componentName,
       property = property, set' = set'}
instance ToResourceProperties MutationActionSetStateParameterProperty where
  toResourceProperties MutationActionSetStateParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmplifyUIBuilder::Component.MutationActionSetStateParameter",
         supportsTags = Prelude.False,
         properties = ["ComponentName" JSON..= componentName,
                       "Property" JSON..= property, "Set" JSON..= set']}
instance JSON.ToJSON MutationActionSetStateParameterProperty where
  toJSON MutationActionSetStateParameterProperty {..}
    = JSON.object
        ["ComponentName" JSON..= componentName,
         "Property" JSON..= property, "Set" JSON..= set']
instance Property "ComponentName" MutationActionSetStateParameterProperty where
  type PropertyType "ComponentName" MutationActionSetStateParameterProperty = Value Prelude.Text
  set newValue MutationActionSetStateParameterProperty {..}
    = MutationActionSetStateParameterProperty
        {componentName = newValue, ..}
instance Property "Property" MutationActionSetStateParameterProperty where
  type PropertyType "Property" MutationActionSetStateParameterProperty = Value Prelude.Text
  set newValue MutationActionSetStateParameterProperty {..}
    = MutationActionSetStateParameterProperty {property = newValue, ..}
instance Property "Set" MutationActionSetStateParameterProperty where
  type PropertyType "Set" MutationActionSetStateParameterProperty = ComponentPropertyProperty
  set newValue MutationActionSetStateParameterProperty {..}
    = MutationActionSetStateParameterProperty {set' = newValue, ..}