module Stratosphere.CodeCommit.Repository.RepositoryTriggerProperty (
        RepositoryTriggerProperty(..), mkRepositoryTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RepositoryTriggerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html>
    RepositoryTriggerProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-branches>
                               branches :: (Prelude.Maybe (ValueList Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-customdata>
                               customData :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-destinationarn>
                               destinationArn :: (Value Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-events>
                               events :: (ValueList Prelude.Text),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codecommit-repository-repositorytrigger.html#cfn-codecommit-repository-repositorytrigger-name>
                               name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRepositoryTriggerProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> RepositoryTriggerProperty
mkRepositoryTriggerProperty destinationArn events name
  = RepositoryTriggerProperty
      {haddock_workaround_ = (), destinationArn = destinationArn,
       events = events, name = name, branches = Prelude.Nothing,
       customData = Prelude.Nothing}
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