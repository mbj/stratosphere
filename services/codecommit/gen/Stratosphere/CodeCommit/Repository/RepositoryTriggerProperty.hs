module Stratosphere.CodeCommit.Repository.RepositoryTriggerProperty (
        RepositoryTriggerProperty(..), mkRepositoryTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryTriggerProperty
  = RepositoryTriggerProperty {branches :: (Prelude.Maybe (ValueList Prelude.Text)),
                               customData :: (Prelude.Maybe (Value Prelude.Text)),
                               destinationArn :: (Value Prelude.Text),
                               events :: (ValueList Prelude.Text),
                               name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryTriggerProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> RepositoryTriggerProperty
mkRepositoryTriggerProperty destinationArn events name
  = RepositoryTriggerProperty
      {destinationArn = destinationArn, events = events, name = name,
       branches = Prelude.Nothing, customData = Prelude.Nothing}
instance ToResourceProperties RepositoryTriggerProperty where
  toResourceProperties RepositoryTriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeCommit::Repository.RepositoryTrigger",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationArn" JSON..= destinationArn, "Events" JSON..= events,
                            "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Branches" Prelude.<$> branches,
                               (JSON..=) "CustomData" Prelude.<$> customData]))}
instance JSON.ToJSON RepositoryTriggerProperty where
  toJSON RepositoryTriggerProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationArn" JSON..= destinationArn, "Events" JSON..= events,
               "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Branches" Prelude.<$> branches,
                  (JSON..=) "CustomData" Prelude.<$> customData])))
instance Property "Branches" RepositoryTriggerProperty where
  type PropertyType "Branches" RepositoryTriggerProperty = ValueList Prelude.Text
  set newValue RepositoryTriggerProperty {..}
    = RepositoryTriggerProperty {branches = Prelude.pure newValue, ..}
instance Property "CustomData" RepositoryTriggerProperty where
  type PropertyType "CustomData" RepositoryTriggerProperty = Value Prelude.Text
  set newValue RepositoryTriggerProperty {..}
    = RepositoryTriggerProperty
        {customData = Prelude.pure newValue, ..}
instance Property "DestinationArn" RepositoryTriggerProperty where
  type PropertyType "DestinationArn" RepositoryTriggerProperty = Value Prelude.Text
  set newValue RepositoryTriggerProperty {..}
    = RepositoryTriggerProperty {destinationArn = newValue, ..}
instance Property "Events" RepositoryTriggerProperty where
  type PropertyType "Events" RepositoryTriggerProperty = ValueList Prelude.Text
  set newValue RepositoryTriggerProperty {..}
    = RepositoryTriggerProperty {events = newValue, ..}
instance Property "Name" RepositoryTriggerProperty where
  type PropertyType "Name" RepositoryTriggerProperty = Value Prelude.Text
  set newValue RepositoryTriggerProperty {..}
    = RepositoryTriggerProperty {name = newValue, ..}