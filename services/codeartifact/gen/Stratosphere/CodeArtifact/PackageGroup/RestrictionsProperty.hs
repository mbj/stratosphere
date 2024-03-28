module Stratosphere.CodeArtifact.PackageGroup.RestrictionsProperty (
        module Exports, RestrictionsProperty(..), mkRestrictionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeArtifact.PackageGroup.RestrictionTypeProperty as Exports
import Stratosphere.ResourceProperties
data RestrictionsProperty
  = RestrictionsProperty {externalUpstream :: (Prelude.Maybe RestrictionTypeProperty),
                          internalUpstream :: (Prelude.Maybe RestrictionTypeProperty),
                          publish :: (Prelude.Maybe RestrictionTypeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRestrictionsProperty :: RestrictionsProperty
mkRestrictionsProperty
  = RestrictionsProperty
      {externalUpstream = Prelude.Nothing,
       internalUpstream = Prelude.Nothing, publish = Prelude.Nothing}
instance ToResourceProperties RestrictionsProperty where
  toResourceProperties RestrictionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodeArtifact::PackageGroup.Restrictions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExternalUpstream" Prelude.<$> externalUpstream,
                            (JSON..=) "InternalUpstream" Prelude.<$> internalUpstream,
                            (JSON..=) "Publish" Prelude.<$> publish])}
instance JSON.ToJSON RestrictionsProperty where
  toJSON RestrictionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExternalUpstream" Prelude.<$> externalUpstream,
               (JSON..=) "InternalUpstream" Prelude.<$> internalUpstream,
               (JSON..=) "Publish" Prelude.<$> publish]))
instance Property "ExternalUpstream" RestrictionsProperty where
  type PropertyType "ExternalUpstream" RestrictionsProperty = RestrictionTypeProperty
  set newValue RestrictionsProperty {..}
    = RestrictionsProperty
        {externalUpstream = Prelude.pure newValue, ..}
instance Property "InternalUpstream" RestrictionsProperty where
  type PropertyType "InternalUpstream" RestrictionsProperty = RestrictionTypeProperty
  set newValue RestrictionsProperty {..}
    = RestrictionsProperty
        {internalUpstream = Prelude.pure newValue, ..}
instance Property "Publish" RestrictionsProperty where
  type PropertyType "Publish" RestrictionsProperty = RestrictionTypeProperty
  set newValue RestrictionsProperty {..}
    = RestrictionsProperty {publish = Prelude.pure newValue, ..}