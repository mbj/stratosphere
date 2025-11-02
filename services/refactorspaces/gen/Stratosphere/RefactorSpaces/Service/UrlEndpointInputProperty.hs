module Stratosphere.RefactorSpaces.Service.UrlEndpointInputProperty (
        UrlEndpointInputProperty(..), mkUrlEndpointInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UrlEndpointInputProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-service-urlendpointinput.html>
    UrlEndpointInputProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-service-urlendpointinput.html#cfn-refactorspaces-service-urlendpointinput-healthurl>
                              healthUrl :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-service-urlendpointinput.html#cfn-refactorspaces-service-urlendpointinput-url>
                              url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUrlEndpointInputProperty ::
  Value Prelude.Text -> UrlEndpointInputProperty
mkUrlEndpointInputProperty url
  = UrlEndpointInputProperty
      {haddock_workaround_ = (), url = url, healthUrl = Prelude.Nothing}
instance ToResourceProperties UrlEndpointInputProperty where
  toResourceProperties UrlEndpointInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Service.UrlEndpointInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Url" JSON..= url]
                           (Prelude.catMaybes [(JSON..=) "HealthUrl" Prelude.<$> healthUrl]))}
instance JSON.ToJSON UrlEndpointInputProperty where
  toJSON UrlEndpointInputProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Url" JSON..= url]
              (Prelude.catMaybes [(JSON..=) "HealthUrl" Prelude.<$> healthUrl])))
instance Property "HealthUrl" UrlEndpointInputProperty where
  type PropertyType "HealthUrl" UrlEndpointInputProperty = Value Prelude.Text
  set newValue UrlEndpointInputProperty {..}
    = UrlEndpointInputProperty {healthUrl = Prelude.pure newValue, ..}
instance Property "Url" UrlEndpointInputProperty where
  type PropertyType "Url" UrlEndpointInputProperty = Value Prelude.Text
  set newValue UrlEndpointInputProperty {..}
    = UrlEndpointInputProperty {url = newValue, ..}