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
                    sourceData :: SourceDataProperty,
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rolesanywhere-trustanchor-source.html#cfn-rolesanywhere-trustanchor-source-sourcetype>
                    sourceType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSourceProperty ::
  SourceDataProperty -> Value Prelude.Text -> SourceProperty
mkSourceProperty sourceData sourceType
  = SourceProperty
      {haddock_workaround_ = (), sourceData = sourceData,
       sourceType = sourceType}
instance ToResourceProperties SourceProperty where
  toResourceProperties SourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor.Source",
         supportsTags = Prelude.False,
         properties = ["SourceData" JSON..= sourceData,
                       "SourceType" JSON..= sourceType]}
instance JSON.ToJSON SourceProperty where
  toJSON SourceProperty {..}
    = JSON.object
        ["SourceData" JSON..= sourceData, "SourceType" JSON..= sourceType]
instance Property "SourceData" SourceProperty where
  type PropertyType "SourceData" SourceProperty = SourceDataProperty
  set newValue SourceProperty {..}
    = SourceProperty {sourceData = newValue, ..}
instance Property "SourceType" SourceProperty where
  type PropertyType "SourceType" SourceProperty = Value Prelude.Text
  set newValue SourceProperty {..}
    = SourceProperty {sourceType = newValue, ..}