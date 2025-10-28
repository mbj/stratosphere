module Stratosphere.Lightsail.Distribution.QueryStringObjectProperty (
        QueryStringObjectProperty(..), mkQueryStringObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryStringObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-querystringobject.html>
    QueryStringObjectProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-querystringobject.html#cfn-lightsail-distribution-querystringobject-option>
                               option :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-distribution-querystringobject.html#cfn-lightsail-distribution-querystringobject-querystringsallowlist>
                               queryStringsAllowList :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryStringObjectProperty :: QueryStringObjectProperty
mkQueryStringObjectProperty
  = QueryStringObjectProperty
      {haddock_workaround_ = (), option = Prelude.Nothing,
       queryStringsAllowList = Prelude.Nothing}
instance ToResourceProperties QueryStringObjectProperty where
  toResourceProperties QueryStringObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Distribution.QueryStringObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Option" Prelude.<$> option,
                            (JSON..=) "QueryStringsAllowList"
                              Prelude.<$> queryStringsAllowList])}
instance JSON.ToJSON QueryStringObjectProperty where
  toJSON QueryStringObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Option" Prelude.<$> option,
               (JSON..=) "QueryStringsAllowList"
                 Prelude.<$> queryStringsAllowList]))
instance Property "Option" QueryStringObjectProperty where
  type PropertyType "Option" QueryStringObjectProperty = Value Prelude.Bool
  set newValue QueryStringObjectProperty {..}
    = QueryStringObjectProperty {option = Prelude.pure newValue, ..}
instance Property "QueryStringsAllowList" QueryStringObjectProperty where
  type PropertyType "QueryStringsAllowList" QueryStringObjectProperty = ValueList Prelude.Text
  set newValue QueryStringObjectProperty {..}
    = QueryStringObjectProperty
        {queryStringsAllowList = Prelude.pure newValue, ..}