module Stratosphere.Pipes.Pipe.SelfManagedKafkaAccessConfigurationVpcProperty (
        SelfManagedKafkaAccessConfigurationVpcProperty(..),
        mkSelfManagedKafkaAccessConfigurationVpcProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SelfManagedKafkaAccessConfigurationVpcProperty
  = SelfManagedKafkaAccessConfigurationVpcProperty {securityGroup :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                    subnets :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSelfManagedKafkaAccessConfigurationVpcProperty ::
  SelfManagedKafkaAccessConfigurationVpcProperty
mkSelfManagedKafkaAccessConfigurationVpcProperty
  = SelfManagedKafkaAccessConfigurationVpcProperty
      {securityGroup = Prelude.Nothing, subnets = Prelude.Nothing}
instance ToResourceProperties SelfManagedKafkaAccessConfigurationVpcProperty where
  toResourceProperties
    SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.SelfManagedKafkaAccessConfigurationVpc",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroup" Prelude.<$> securityGroup,
                            (JSON..=) "Subnets" Prelude.<$> subnets])}
instance JSON.ToJSON SelfManagedKafkaAccessConfigurationVpcProperty where
  toJSON SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroup" Prelude.<$> securityGroup,
               (JSON..=) "Subnets" Prelude.<$> subnets]))
instance Property "SecurityGroup" SelfManagedKafkaAccessConfigurationVpcProperty where
  type PropertyType "SecurityGroup" SelfManagedKafkaAccessConfigurationVpcProperty = ValueList Prelude.Text
  set newValue SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = SelfManagedKafkaAccessConfigurationVpcProperty
        {securityGroup = Prelude.pure newValue, ..}
instance Property "Subnets" SelfManagedKafkaAccessConfigurationVpcProperty where
  type PropertyType "Subnets" SelfManagedKafkaAccessConfigurationVpcProperty = ValueList Prelude.Text
  set newValue SelfManagedKafkaAccessConfigurationVpcProperty {..}
    = SelfManagedKafkaAccessConfigurationVpcProperty
        {subnets = Prelude.pure newValue, ..}