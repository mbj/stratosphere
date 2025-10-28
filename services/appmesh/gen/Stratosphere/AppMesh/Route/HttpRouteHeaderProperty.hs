module Stratosphere.AppMesh.Route.HttpRouteHeaderProperty (
        module Exports, HttpRouteHeaderProperty(..),
        mkHttpRouteHeaderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HeaderMatchMethodProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpRouteHeaderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html>
    HttpRouteHeaderProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-invert>
                             invert :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-match>
                             match :: (Prelude.Maybe HeaderMatchMethodProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-httprouteheader.html#cfn-appmesh-route-httprouteheader-name>
                             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpRouteHeaderProperty ::
  Value Prelude.Text -> HttpRouteHeaderProperty
mkHttpRouteHeaderProperty name
  = HttpRouteHeaderProperty
      {haddock_workaround_ = (), name = name, invert = Prelude.Nothing,
       match = Prelude.Nothing}
instance ToResourceProperties HttpRouteHeaderProperty where
  toResourceProperties HttpRouteHeaderProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.HttpRouteHeader",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Invert" Prelude.<$> invert,
                               (JSON..=) "Match" Prelude.<$> match]))}
instance JSON.ToJSON HttpRouteHeaderProperty where
  toJSON HttpRouteHeaderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Invert" Prelude.<$> invert,
                  (JSON..=) "Match" Prelude.<$> match])))
instance Property "Invert" HttpRouteHeaderProperty where
  type PropertyType "Invert" HttpRouteHeaderProperty = Value Prelude.Bool
  set newValue HttpRouteHeaderProperty {..}
    = HttpRouteHeaderProperty {invert = Prelude.pure newValue, ..}
instance Property "Match" HttpRouteHeaderProperty where
  type PropertyType "Match" HttpRouteHeaderProperty = HeaderMatchMethodProperty
  set newValue HttpRouteHeaderProperty {..}
    = HttpRouteHeaderProperty {match = Prelude.pure newValue, ..}
instance Property "Name" HttpRouteHeaderProperty where
  type PropertyType "Name" HttpRouteHeaderProperty = Value Prelude.Text
  set newValue HttpRouteHeaderProperty {..}
    = HttpRouteHeaderProperty {name = newValue, ..}