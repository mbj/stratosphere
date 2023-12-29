module Stratosphere.SSM.ResourceDataSync.SyncSourceProperty (
        module Exports, SyncSourceProperty(..), mkSyncSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.ResourceDataSync.AwsOrganizationsSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SyncSourceProperty
  = SyncSourceProperty {awsOrganizationsSource :: (Prelude.Maybe AwsOrganizationsSourceProperty),
                        includeFutureRegions :: (Prelude.Maybe (Value Prelude.Bool)),
                        sourceRegions :: (ValueList Prelude.Text),
                        sourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSyncSourceProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> SyncSourceProperty
mkSyncSourceProperty sourceRegions sourceType
  = SyncSourceProperty
      {sourceRegions = sourceRegions, sourceType = sourceType,
       awsOrganizationsSource = Prelude.Nothing,
       includeFutureRegions = Prelude.Nothing}
instance ToResourceProperties SyncSourceProperty where
  toResourceProperties SyncSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::ResourceDataSync.SyncSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceRegions" JSON..= sourceRegions,
                            "SourceType" JSON..= sourceType]
                           (Prelude.catMaybes
                              [(JSON..=) "AwsOrganizationsSource"
                                 Prelude.<$> awsOrganizationsSource,
                               (JSON..=) "IncludeFutureRegions"
                                 Prelude.<$> includeFutureRegions]))}
instance JSON.ToJSON SyncSourceProperty where
  toJSON SyncSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceRegions" JSON..= sourceRegions,
               "SourceType" JSON..= sourceType]
              (Prelude.catMaybes
                 [(JSON..=) "AwsOrganizationsSource"
                    Prelude.<$> awsOrganizationsSource,
                  (JSON..=) "IncludeFutureRegions"
                    Prelude.<$> includeFutureRegions])))
instance Property "AwsOrganizationsSource" SyncSourceProperty where
  type PropertyType "AwsOrganizationsSource" SyncSourceProperty = AwsOrganizationsSourceProperty
  set newValue SyncSourceProperty {..}
    = SyncSourceProperty
        {awsOrganizationsSource = Prelude.pure newValue, ..}
instance Property "IncludeFutureRegions" SyncSourceProperty where
  type PropertyType "IncludeFutureRegions" SyncSourceProperty = Value Prelude.Bool
  set newValue SyncSourceProperty {..}
    = SyncSourceProperty
        {includeFutureRegions = Prelude.pure newValue, ..}
instance Property "SourceRegions" SyncSourceProperty where
  type PropertyType "SourceRegions" SyncSourceProperty = ValueList Prelude.Text
  set newValue SyncSourceProperty {..}
    = SyncSourceProperty {sourceRegions = newValue, ..}
instance Property "SourceType" SyncSourceProperty where
  type PropertyType "SourceType" SyncSourceProperty = Value Prelude.Text
  set newValue SyncSourceProperty {..}
    = SyncSourceProperty {sourceType = newValue, ..}