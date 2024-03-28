module Stratosphere.S3.StorageLensGroup.FilterProperty (
        module Exports, FilterProperty(..), mkFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.AndProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.MatchObjectAgeProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.MatchObjectSizeProperty as Exports
import {-# SOURCE #-} Stratosphere.S3.StorageLensGroup.OrProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FilterProperty
  = FilterProperty {and :: (Prelude.Maybe AndProperty),
                    matchAnyPrefix :: (Prelude.Maybe (ValueList Prelude.Text)),
                    matchAnySuffix :: (Prelude.Maybe (ValueList Prelude.Text)),
                    matchAnyTag :: (Prelude.Maybe [Tag]),
                    matchObjectAge :: (Prelude.Maybe MatchObjectAgeProperty),
                    matchObjectSize :: (Prelude.Maybe MatchObjectSizeProperty),
                    or :: (Prelude.Maybe OrProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterProperty :: FilterProperty
mkFilterProperty
  = FilterProperty
      {and = Prelude.Nothing, matchAnyPrefix = Prelude.Nothing,
       matchAnySuffix = Prelude.Nothing, matchAnyTag = Prelude.Nothing,
       matchObjectAge = Prelude.Nothing,
       matchObjectSize = Prelude.Nothing, or = Prelude.Nothing}
instance ToResourceProperties FilterProperty where
  toResourceProperties FilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::StorageLensGroup.Filter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "And" Prelude.<$> and,
                            (JSON..=) "MatchAnyPrefix" Prelude.<$> matchAnyPrefix,
                            (JSON..=) "MatchAnySuffix" Prelude.<$> matchAnySuffix,
                            (JSON..=) "MatchAnyTag" Prelude.<$> matchAnyTag,
                            (JSON..=) "MatchObjectAge" Prelude.<$> matchObjectAge,
                            (JSON..=) "MatchObjectSize" Prelude.<$> matchObjectSize,
                            (JSON..=) "Or" Prelude.<$> or])}
instance JSON.ToJSON FilterProperty where
  toJSON FilterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "And" Prelude.<$> and,
               (JSON..=) "MatchAnyPrefix" Prelude.<$> matchAnyPrefix,
               (JSON..=) "MatchAnySuffix" Prelude.<$> matchAnySuffix,
               (JSON..=) "MatchAnyTag" Prelude.<$> matchAnyTag,
               (JSON..=) "MatchObjectAge" Prelude.<$> matchObjectAge,
               (JSON..=) "MatchObjectSize" Prelude.<$> matchObjectSize,
               (JSON..=) "Or" Prelude.<$> or]))
instance Property "And" FilterProperty where
  type PropertyType "And" FilterProperty = AndProperty
  set newValue FilterProperty {..}
    = FilterProperty {and = Prelude.pure newValue, ..}
instance Property "MatchAnyPrefix" FilterProperty where
  type PropertyType "MatchAnyPrefix" FilterProperty = ValueList Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {matchAnyPrefix = Prelude.pure newValue, ..}
instance Property "MatchAnySuffix" FilterProperty where
  type PropertyType "MatchAnySuffix" FilterProperty = ValueList Prelude.Text
  set newValue FilterProperty {..}
    = FilterProperty {matchAnySuffix = Prelude.pure newValue, ..}
instance Property "MatchAnyTag" FilterProperty where
  type PropertyType "MatchAnyTag" FilterProperty = [Tag]
  set newValue FilterProperty {..}
    = FilterProperty {matchAnyTag = Prelude.pure newValue, ..}
instance Property "MatchObjectAge" FilterProperty where
  type PropertyType "MatchObjectAge" FilterProperty = MatchObjectAgeProperty
  set newValue FilterProperty {..}
    = FilterProperty {matchObjectAge = Prelude.pure newValue, ..}
instance Property "MatchObjectSize" FilterProperty where
  type PropertyType "MatchObjectSize" FilterProperty = MatchObjectSizeProperty
  set newValue FilterProperty {..}
    = FilterProperty {matchObjectSize = Prelude.pure newValue, ..}
instance Property "Or" FilterProperty where
  type PropertyType "Or" FilterProperty = OrProperty
  set newValue FilterProperty {..}
    = FilterProperty {or = Prelude.pure newValue, ..}