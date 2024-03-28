module Stratosphere.S3.StorageLensGroup.AndProperty (
        module Exports, AndProperty(..), mkAndProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.MatchObjectAgeProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.MatchObjectSizeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data AndProperty
  = AndProperty {matchAnyPrefix :: (Prelude.Maybe (ValueList Prelude.Text)),
                 matchAnySuffix :: (Prelude.Maybe (ValueList Prelude.Text)),
                 matchAnyTag :: (Prelude.Maybe [Tag]),
                 matchObjectAge :: (Prelude.Maybe MatchObjectAgeProperty),
                 matchObjectSize :: (Prelude.Maybe MatchObjectSizeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAndProperty :: AndProperty
mkAndProperty
  = AndProperty
      {matchAnyPrefix = Prelude.Nothing,
       matchAnySuffix = Prelude.Nothing, matchAnyTag = Prelude.Nothing,
       matchObjectAge = Prelude.Nothing,
       matchObjectSize = Prelude.Nothing}
instance ToResourceProperties AndProperty where
  toResourceProperties AndProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLensGroup.And",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MatchAnyPrefix" Prelude.<$> matchAnyPrefix,
                            (JSON..=) "MatchAnySuffix" Prelude.<$> matchAnySuffix,
                            (JSON..=) "MatchAnyTag" Prelude.<$> matchAnyTag,
                            (JSON..=) "MatchObjectAge" Prelude.<$> matchObjectAge,
                            (JSON..=) "MatchObjectSize" Prelude.<$> matchObjectSize])}
instance JSON.ToJSON AndProperty where
  toJSON AndProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MatchAnyPrefix" Prelude.<$> matchAnyPrefix,
               (JSON..=) "MatchAnySuffix" Prelude.<$> matchAnySuffix,
               (JSON..=) "MatchAnyTag" Prelude.<$> matchAnyTag,
               (JSON..=) "MatchObjectAge" Prelude.<$> matchObjectAge,
               (JSON..=) "MatchObjectSize" Prelude.<$> matchObjectSize]))
instance Property "MatchAnyPrefix" AndProperty where
  type PropertyType "MatchAnyPrefix" AndProperty = ValueList Prelude.Text
  set newValue AndProperty {..}
    = AndProperty {matchAnyPrefix = Prelude.pure newValue, ..}
instance Property "MatchAnySuffix" AndProperty where
  type PropertyType "MatchAnySuffix" AndProperty = ValueList Prelude.Text
  set newValue AndProperty {..}
    = AndProperty {matchAnySuffix = Prelude.pure newValue, ..}
instance Property "MatchAnyTag" AndProperty where
  type PropertyType "MatchAnyTag" AndProperty = [Tag]
  set newValue AndProperty {..}
    = AndProperty {matchAnyTag = Prelude.pure newValue, ..}
instance Property "MatchObjectAge" AndProperty where
  type PropertyType "MatchObjectAge" AndProperty = MatchObjectAgeProperty
  set newValue AndProperty {..}
    = AndProperty {matchObjectAge = Prelude.pure newValue, ..}
instance Property "MatchObjectSize" AndProperty where
  type PropertyType "MatchObjectSize" AndProperty = MatchObjectSizeProperty
  set newValue AndProperty {..}
    = AndProperty {matchObjectSize = Prelude.pure newValue, ..}