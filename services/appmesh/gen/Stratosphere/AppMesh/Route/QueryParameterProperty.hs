module Stratosphere.AppMesh.Route.QueryParameterProperty (
        module Exports, QueryParameterProperty(..),
        mkQueryParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppMesh.Route.HttpQueryParameterMatchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryParameterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-queryparameter.html>
    QueryParameterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-queryparameter.html#cfn-appmesh-route-queryparameter-match>
                            match :: (Prelude.Maybe HttpQueryParameterMatchProperty),
                            -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-route-queryparameter.html#cfn-appmesh-route-queryparameter-name>
                            name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryParameterProperty ::
  Value Prelude.Text -> QueryParameterProperty
mkQueryParameterProperty name
  = QueryParameterProperty {name = name, match = Prelude.Nothing}
instance ToResourceProperties QueryParameterProperty where
  toResourceProperties QueryParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::Route.QueryParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Match" Prelude.<$> match]))}
instance JSON.ToJSON QueryParameterProperty where
  toJSON QueryParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Match" Prelude.<$> match])))
instance Property "Match" QueryParameterProperty where
  type PropertyType "Match" QueryParameterProperty = HttpQueryParameterMatchProperty
  set newValue QueryParameterProperty {..}
    = QueryParameterProperty {match = Prelude.pure newValue, ..}
instance Property "Name" QueryParameterProperty where
  type PropertyType "Name" QueryParameterProperty = Value Prelude.Text
  set newValue QueryParameterProperty {..}
    = QueryParameterProperty {name = newValue, ..}