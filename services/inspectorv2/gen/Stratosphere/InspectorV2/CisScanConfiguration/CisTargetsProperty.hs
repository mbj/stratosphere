module Stratosphere.InspectorV2.CisScanConfiguration.CisTargetsProperty (
        CisTargetsProperty(..), mkCisTargetsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CisTargetsProperty
  = CisTargetsProperty {accountIds :: (ValueList Prelude.Text),
                        targetResourceTags :: (Prelude.Maybe JSON.Object)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCisTargetsProperty ::
  ValueList Prelude.Text -> CisTargetsProperty
mkCisTargetsProperty accountIds
  = CisTargetsProperty
      {accountIds = accountIds, targetResourceTags = Prelude.Nothing}
instance ToResourceProperties CisTargetsProperty where
  toResourceProperties CisTargetsProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.CisTargets",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AccountIds" JSON..= accountIds]
                           (Prelude.catMaybes
                              [(JSON..=) "TargetResourceTags" Prelude.<$> targetResourceTags]))}
instance JSON.ToJSON CisTargetsProperty where
  toJSON CisTargetsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AccountIds" JSON..= accountIds]
              (Prelude.catMaybes
                 [(JSON..=) "TargetResourceTags" Prelude.<$> targetResourceTags])))
instance Property "AccountIds" CisTargetsProperty where
  type PropertyType "AccountIds" CisTargetsProperty = ValueList Prelude.Text
  set newValue CisTargetsProperty {..}
    = CisTargetsProperty {accountIds = newValue, ..}
instance Property "TargetResourceTags" CisTargetsProperty where
  type PropertyType "TargetResourceTags" CisTargetsProperty = JSON.Object
  set newValue CisTargetsProperty {..}
    = CisTargetsProperty
        {targetResourceTags = Prelude.pure newValue, ..}