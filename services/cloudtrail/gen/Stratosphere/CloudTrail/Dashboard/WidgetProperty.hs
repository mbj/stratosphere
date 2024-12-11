module Stratosphere.CloudTrail.Dashboard.WidgetProperty (
        WidgetProperty(..), mkWidgetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WidgetProperty
  = WidgetProperty {queryParameters :: (Prelude.Maybe (ValueList Prelude.Text)),
                    queryStatement :: (Value Prelude.Text),
                    viewProperties :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWidgetProperty :: Value Prelude.Text -> WidgetProperty
mkWidgetProperty queryStatement
  = WidgetProperty
      {queryStatement = queryStatement,
       queryParameters = Prelude.Nothing,
       viewProperties = Prelude.Nothing}
instance ToResourceProperties WidgetProperty where
  toResourceProperties WidgetProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudTrail::Dashboard.Widget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["QueryStatement" JSON..= queryStatement]
                           (Prelude.catMaybes
                              [(JSON..=) "QueryParameters" Prelude.<$> queryParameters,
                               (JSON..=) "ViewProperties" Prelude.<$> viewProperties]))}
instance JSON.ToJSON WidgetProperty where
  toJSON WidgetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["QueryStatement" JSON..= queryStatement]
              (Prelude.catMaybes
                 [(JSON..=) "QueryParameters" Prelude.<$> queryParameters,
                  (JSON..=) "ViewProperties" Prelude.<$> viewProperties])))
instance Property "QueryParameters" WidgetProperty where
  type PropertyType "QueryParameters" WidgetProperty = ValueList Prelude.Text
  set newValue WidgetProperty {..}
    = WidgetProperty {queryParameters = Prelude.pure newValue, ..}
instance Property "QueryStatement" WidgetProperty where
  type PropertyType "QueryStatement" WidgetProperty = Value Prelude.Text
  set newValue WidgetProperty {..}
    = WidgetProperty {queryStatement = newValue, ..}
instance Property "ViewProperties" WidgetProperty where
  type PropertyType "ViewProperties" WidgetProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue WidgetProperty {..}
    = WidgetProperty {viewProperties = Prelude.pure newValue, ..}