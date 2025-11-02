module Stratosphere.VpcLattice.Rule.HttpMatchProperty (
        module Exports, HttpMatchProperty(..), mkHttpMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.HeaderMatchProperty as Exports
import {-# SOURCE #-} Stratosphere.VpcLattice.Rule.PathMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-httpmatch.html>
    HttpMatchProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-httpmatch.html#cfn-vpclattice-rule-httpmatch-headermatches>
                       headerMatches :: (Prelude.Maybe [HeaderMatchProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-httpmatch.html#cfn-vpclattice-rule-httpmatch-method>
                       method :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-rule-httpmatch.html#cfn-vpclattice-rule-httpmatch-pathmatch>
                       pathMatch :: (Prelude.Maybe PathMatchProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpMatchProperty :: HttpMatchProperty
mkHttpMatchProperty
  = HttpMatchProperty
      {haddock_workaround_ = (), headerMatches = Prelude.Nothing,
       method = Prelude.Nothing, pathMatch = Prelude.Nothing}
instance ToResourceProperties HttpMatchProperty where
  toResourceProperties HttpMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::Rule.HttpMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HeaderMatches" Prelude.<$> headerMatches,
                            (JSON..=) "Method" Prelude.<$> method,
                            (JSON..=) "PathMatch" Prelude.<$> pathMatch])}
instance JSON.ToJSON HttpMatchProperty where
  toJSON HttpMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HeaderMatches" Prelude.<$> headerMatches,
               (JSON..=) "Method" Prelude.<$> method,
               (JSON..=) "PathMatch" Prelude.<$> pathMatch]))
instance Property "HeaderMatches" HttpMatchProperty where
  type PropertyType "HeaderMatches" HttpMatchProperty = [HeaderMatchProperty]
  set newValue HttpMatchProperty {..}
    = HttpMatchProperty {headerMatches = Prelude.pure newValue, ..}
instance Property "Method" HttpMatchProperty where
  type PropertyType "Method" HttpMatchProperty = Value Prelude.Text
  set newValue HttpMatchProperty {..}
    = HttpMatchProperty {method = Prelude.pure newValue, ..}
instance Property "PathMatch" HttpMatchProperty where
  type PropertyType "PathMatch" HttpMatchProperty = PathMatchProperty
  set newValue HttpMatchProperty {..}
    = HttpMatchProperty {pathMatch = Prelude.pure newValue, ..}