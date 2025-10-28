module Stratosphere.MediaLive.Multiplexprogram.MultiplexProgramServiceDescriptorProperty (
        MultiplexProgramServiceDescriptorProperty(..),
        mkMultiplexProgramServiceDescriptorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexProgramServiceDescriptorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramservicedescriptor.html>
    MultiplexProgramServiceDescriptorProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramservicedescriptor.html#cfn-medialive-multiplexprogram-multiplexprogramservicedescriptor-providername>
                                               providerName :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplexprogram-multiplexprogramservicedescriptor.html#cfn-medialive-multiplexprogram-multiplexprogramservicedescriptor-servicename>
                                               serviceName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexProgramServiceDescriptorProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MultiplexProgramServiceDescriptorProperty
mkMultiplexProgramServiceDescriptorProperty
  providerName
  serviceName
  = MultiplexProgramServiceDescriptorProperty
      {haddock_workaround_ = (), providerName = providerName,
       serviceName = serviceName}
instance ToResourceProperties MultiplexProgramServiceDescriptorProperty where
  toResourceProperties MultiplexProgramServiceDescriptorProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplexprogram.MultiplexProgramServiceDescriptor",
         supportsTags = Prelude.False,
         properties = ["ProviderName" JSON..= providerName,
                       "ServiceName" JSON..= serviceName]}
instance JSON.ToJSON MultiplexProgramServiceDescriptorProperty where
  toJSON MultiplexProgramServiceDescriptorProperty {..}
    = JSON.object
        ["ProviderName" JSON..= providerName,
         "ServiceName" JSON..= serviceName]
instance Property "ProviderName" MultiplexProgramServiceDescriptorProperty where
  type PropertyType "ProviderName" MultiplexProgramServiceDescriptorProperty = Value Prelude.Text
  set newValue MultiplexProgramServiceDescriptorProperty {..}
    = MultiplexProgramServiceDescriptorProperty
        {providerName = newValue, ..}
instance Property "ServiceName" MultiplexProgramServiceDescriptorProperty where
  type PropertyType "ServiceName" MultiplexProgramServiceDescriptorProperty = Value Prelude.Text
  set newValue MultiplexProgramServiceDescriptorProperty {..}
    = MultiplexProgramServiceDescriptorProperty
        {serviceName = newValue, ..}