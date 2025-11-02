module Stratosphere.AppMesh.Route.HttpPathMatchProperty (
        HttpPathMatchProperty(..), mkHttpPathMatchProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpPathMatchProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httppathmatch.html>
    HttpPathMatchProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httppathmatch.html#cfn-appmesh-route-httppathmatch-exact>
                           exact :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httppathmatch.html#cfn-appmesh-route-httppathmatch-regex>
                           regex :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpPathMatchProperty :: HttpPathMatchProperty
mkHttpPathMatchProperty
  = HttpPathMatchProperty
      {haddock_workaround_ = (), exact = Prelude.Nothing,
       regex = Prelude.Nothing}
instance ToResourceProperties HttpPathMatchProperty where
  toResourceProperties HttpPathMatchProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpPathMatch",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Exact" Prelude.<$> exact,
                            (JSON..=) "Regex" Prelude.<$> regex])}
instance JSON.ToJSON HttpPathMatchProperty where
  toJSON HttpPathMatchProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Exact" Prelude.<$> exact,
               (JSON..=) "Regex" Prelude.<$> regex]))
instance Property "Exact" HttpPathMatchProperty where
  type PropertyType "Exact" HttpPathMatchProperty = Value Prelude.Text
  set newValue HttpPathMatchProperty {..}
    = HttpPathMatchProperty {exact = Prelude.pure newValue, ..}
instance Property "Regex" HttpPathMatchProperty where
  type PropertyType "Regex" HttpPathMatchProperty = Value Prelude.Text
  set newValue HttpPathMatchProperty {..}
    = HttpPathMatchProperty {regex = Prelude.pure newValue, ..}