module Stratosphere.CustomerProfiles.Domain.ConflictResolutionProperty (
        ConflictResolutionProperty(..), mkConflictResolutionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConflictResolutionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-conflictresolution.html>
    ConflictResolutionProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-conflictresolution.html#cfn-customerprofiles-domain-conflictresolution-conflictresolvingmodel>
                                conflictResolvingModel :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-customerprofiles-domain-conflictresolution.html#cfn-customerprofiles-domain-conflictresolution-sourcename>
                                sourceName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConflictResolutionProperty ::
  Value Prelude.Text -> ConflictResolutionProperty
mkConflictResolutionProperty conflictResolvingModel
  = ConflictResolutionProperty
      {haddock_workaround_ = (),
       conflictResolvingModel = conflictResolvingModel,
       sourceName = Prelude.Nothing}
instance ToResourceProperties ConflictResolutionProperty where
  toResourceProperties ConflictResolutionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.ConflictResolution",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConflictResolvingModel" JSON..= conflictResolvingModel]
                           (Prelude.catMaybes
                              [(JSON..=) "SourceName" Prelude.<$> sourceName]))}
instance JSON.ToJSON ConflictResolutionProperty where
  toJSON ConflictResolutionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConflictResolvingModel" JSON..= conflictResolvingModel]
              (Prelude.catMaybes
                 [(JSON..=) "SourceName" Prelude.<$> sourceName])))
instance Property "ConflictResolvingModel" ConflictResolutionProperty where
  type PropertyType "ConflictResolvingModel" ConflictResolutionProperty = Value Prelude.Text
  set newValue ConflictResolutionProperty {..}
    = ConflictResolutionProperty
        {conflictResolvingModel = newValue, ..}
instance Property "SourceName" ConflictResolutionProperty where
  type PropertyType "SourceName" ConflictResolutionProperty = Value Prelude.Text
  set newValue ConflictResolutionProperty {..}
    = ConflictResolutionProperty
        {sourceName = Prelude.pure newValue, ..}