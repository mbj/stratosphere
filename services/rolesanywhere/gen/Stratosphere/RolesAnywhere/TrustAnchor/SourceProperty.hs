module Stratosphere.RolesAnywhere.TrustAnchor.SourceProperty (
        module Exports, SourceProperty(..), mkSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RolesAnywhere.TrustAnchor.SourceDataProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SourceProperty
  = SourceProperty {sourceData :: (Prelude.Maybe SourceDataProperty),
                    sourceType :: (Prelude.Maybe (Value Prelude.Text))}
mkSourceProperty :: SourceProperty
mkSourceProperty
  = SourceProperty
      {sourceData = Prelude.Nothing, sourceType = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor.Source",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceData" Prelude.<$> sourceData,
                            (JSON..=) "SourceType" Prelude.<$> sourceType])}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceData" Prelude.<$> sourceData,
               (JSON..=) "SourceType" Prelude.<$> sourceType]))
instance Property "SourceData" SourceProperty where
  type PropertyType "SourceData" SourceProperty = SourceDataProperty
  set newValue SourceProperty {..}
    = SourceProperty {sourceData = Prelude.pure newValue, ..}
instance Property "SourceType" SourceProperty where
  type PropertyType "SourceType" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sourceType = Prelude.pure newValue, ..}