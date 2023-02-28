module Stratosphere.RolesAnywhere.TrustAnchor (
        module Exports, TrustAnchor(..), mkTrustAnchor
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.RolesAnywhere.TrustAnchor.SourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrustAnchor
  = TrustAnchor {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                 name :: (Value Prelude.Text),
                 source :: SourceProperty,
                 tags :: (Prelude.Maybe [Tag])}
mkTrustAnchor ::
  Value Prelude.Text -> SourceProperty -> TrustAnchor
mkTrustAnchor name source
  = TrustAnchor
      {name = name, source = source, enabled = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties TrustAnchor where
  toResourceProperties TrustAnchor {..}
    = ResourceProperties
        {awsType = "AWS::RolesAnywhere::TrustAnchor",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TrustAnchor where
  toJSON TrustAnchor {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Enabled" TrustAnchor where
  type PropertyType "Enabled" TrustAnchor = Value Prelude.Bool
  set newValue TrustAnchor {..}
    = TrustAnchor {enabled = Prelude.pure newValue, ..}
instance Property "Name" TrustAnchor where
  type PropertyType "Name" TrustAnchor = Value Prelude.Text
  set newValue TrustAnchor {..} = TrustAnchor {name = newValue, ..}
instance Property "Source" TrustAnchor where
  type PropertyType "Source" TrustAnchor = SourceProperty
  set newValue TrustAnchor {..} = TrustAnchor {source = newValue, ..}
instance Property "Tags" TrustAnchor where
  type PropertyType "Tags" TrustAnchor = [Tag]
  set newValue TrustAnchor {..}
    = TrustAnchor {tags = Prelude.pure newValue, ..}