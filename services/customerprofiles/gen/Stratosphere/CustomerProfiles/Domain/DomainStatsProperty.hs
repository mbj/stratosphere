module Stratosphere.CustomerProfiles.Domain.DomainStatsProperty (
        DomainStatsProperty(..), mkDomainStatsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DomainStatsProperty
  = DomainStatsProperty {meteringProfileCount :: (Prelude.Maybe (Value Prelude.Double)),
                         objectCount :: (Prelude.Maybe (Value Prelude.Double)),
                         profileCount :: (Prelude.Maybe (Value Prelude.Double)),
                         totalSize :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDomainStatsProperty :: DomainStatsProperty
mkDomainStatsProperty
  = DomainStatsProperty
      {meteringProfileCount = Prelude.Nothing,
       objectCount = Prelude.Nothing, profileCount = Prelude.Nothing,
       totalSize = Prelude.Nothing}
instance ToResourceProperties DomainStatsProperty where
  toResourceProperties DomainStatsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CustomerProfiles::Domain.DomainStats",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MeteringProfileCount" Prelude.<$> meteringProfileCount,
                            (JSON..=) "ObjectCount" Prelude.<$> objectCount,
                            (JSON..=) "ProfileCount" Prelude.<$> profileCount,
                            (JSON..=) "TotalSize" Prelude.<$> totalSize])}
instance JSON.ToJSON DomainStatsProperty where
  toJSON DomainStatsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MeteringProfileCount" Prelude.<$> meteringProfileCount,
               (JSON..=) "ObjectCount" Prelude.<$> objectCount,
               (JSON..=) "ProfileCount" Prelude.<$> profileCount,
               (JSON..=) "TotalSize" Prelude.<$> totalSize]))
instance Property "MeteringProfileCount" DomainStatsProperty where
  type PropertyType "MeteringProfileCount" DomainStatsProperty = Value Prelude.Double
  set newValue DomainStatsProperty {..}
    = DomainStatsProperty
        {meteringProfileCount = Prelude.pure newValue, ..}
instance Property "ObjectCount" DomainStatsProperty where
  type PropertyType "ObjectCount" DomainStatsProperty = Value Prelude.Double
  set newValue DomainStatsProperty {..}
    = DomainStatsProperty {objectCount = Prelude.pure newValue, ..}
instance Property "ProfileCount" DomainStatsProperty where
  type PropertyType "ProfileCount" DomainStatsProperty = Value Prelude.Double
  set newValue DomainStatsProperty {..}
    = DomainStatsProperty {profileCount = Prelude.pure newValue, ..}
instance Property "TotalSize" DomainStatsProperty where
  type PropertyType "TotalSize" DomainStatsProperty = Value Prelude.Double
  set newValue DomainStatsProperty {..}
    = DomainStatsProperty {totalSize = Prelude.pure newValue, ..}