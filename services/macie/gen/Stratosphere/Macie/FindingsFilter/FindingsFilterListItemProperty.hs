module Stratosphere.Macie.FindingsFilter.FindingsFilterListItemProperty (
        FindingsFilterListItemProperty(..),
        mkFindingsFilterListItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FindingsFilterListItemProperty
  = FindingsFilterListItemProperty {id :: (Prelude.Maybe (Value Prelude.Text)),
                                    name :: (Prelude.Maybe (Value Prelude.Text))}
mkFindingsFilterListItemProperty :: FindingsFilterListItemProperty
mkFindingsFilterListItemProperty
  = FindingsFilterListItemProperty
      {id = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties FindingsFilterListItemProperty where
  toResourceProperties FindingsFilterListItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Macie::FindingsFilter.FindingsFilterListItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Id" Prelude.<$> id,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON FindingsFilterListItemProperty where
  toJSON FindingsFilterListItemProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Id" Prelude.<$> id,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Id" FindingsFilterListItemProperty where
  type PropertyType "Id" FindingsFilterListItemProperty = Value Prelude.Text
  set newValue FindingsFilterListItemProperty {..}
    = FindingsFilterListItemProperty {id = Prelude.pure newValue, ..}
instance Property "Name" FindingsFilterListItemProperty where
  type PropertyType "Name" FindingsFilterListItemProperty = Value Prelude.Text
  set newValue FindingsFilterListItemProperty {..}
    = FindingsFilterListItemProperty {name = Prelude.pure newValue, ..}