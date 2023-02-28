module Stratosphere.Kendra.Index.RelevanceProperty (
        module Exports, RelevanceProperty(..), mkRelevanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Kendra.Index.ValueImportanceItemProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelevanceProperty
  = RelevanceProperty {duration :: (Prelude.Maybe (Value Prelude.Text)),
                       freshness :: (Prelude.Maybe (Value Prelude.Bool)),
                       importance :: (Prelude.Maybe (Value Prelude.Integer)),
                       rankOrder :: (Prelude.Maybe (Value Prelude.Text)),
                       valueImportanceItems :: (Prelude.Maybe [ValueImportanceItemProperty])}
mkRelevanceProperty :: RelevanceProperty
mkRelevanceProperty
  = RelevanceProperty
      {duration = Prelude.Nothing, freshness = Prelude.Nothing,
       importance = Prelude.Nothing, rankOrder = Prelude.Nothing,
       valueImportanceItems = Prelude.Nothing}
instance ToResourceProperties RelevanceProperty where
  toResourceProperties RelevanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Kendra::Index.Relevance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Duration" Prelude.<$> duration,
                            (JSON..=) "Freshness" Prelude.<$> freshness,
                            (JSON..=) "Importance" Prelude.<$> importance,
                            (JSON..=) "RankOrder" Prelude.<$> rankOrder,
                            (JSON..=) "ValueImportanceItems"
                              Prelude.<$> valueImportanceItems])}
instance JSON.ToJSON RelevanceProperty where
  toJSON RelevanceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Duration" Prelude.<$> duration,
               (JSON..=) "Freshness" Prelude.<$> freshness,
               (JSON..=) "Importance" Prelude.<$> importance,
               (JSON..=) "RankOrder" Prelude.<$> rankOrder,
               (JSON..=) "ValueImportanceItems"
                 Prelude.<$> valueImportanceItems]))
instance Property "Duration" RelevanceProperty where
  type PropertyType "Duration" RelevanceProperty = Value Prelude.Text
  set newValue RelevanceProperty {..}
    = RelevanceProperty {duration = Prelude.pure newValue, ..}
instance Property "Freshness" RelevanceProperty where
  type PropertyType "Freshness" RelevanceProperty = Value Prelude.Bool
  set newValue RelevanceProperty {..}
    = RelevanceProperty {freshness = Prelude.pure newValue, ..}
instance Property "Importance" RelevanceProperty where
  type PropertyType "Importance" RelevanceProperty = Value Prelude.Integer
  set newValue RelevanceProperty {..}
    = RelevanceProperty {importance = Prelude.pure newValue, ..}
instance Property "RankOrder" RelevanceProperty where
  type PropertyType "RankOrder" RelevanceProperty = Value Prelude.Text
  set newValue RelevanceProperty {..}
    = RelevanceProperty {rankOrder = Prelude.pure newValue, ..}
instance Property "ValueImportanceItems" RelevanceProperty where
  type PropertyType "ValueImportanceItems" RelevanceProperty = [ValueImportanceItemProperty]
  set newValue RelevanceProperty {..}
    = RelevanceProperty
        {valueImportanceItems = Prelude.pure newValue, ..}