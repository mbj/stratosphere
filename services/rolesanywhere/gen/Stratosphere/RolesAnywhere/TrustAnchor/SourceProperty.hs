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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-source.html>
    SourceProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-source.html#cfn-rolesanywhere-trustanchor-source-sourcedata>
                    sourceData :: (Prelude.Maybe SourceDataProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-source.html#cfn-rolesanywhere-trustanchor-source-sourcetype>
                    sourceType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty :: SourceProperty
mkSourceProperty
  = SourceProperty
      {haddock_workaround_ = (), sourceData = Prelude.Nothing,
       sourceType = Prelude.Nothing}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor.Source",
         supportsTags = Prelude.False,
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