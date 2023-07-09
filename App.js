import { StatusBar } from 'expo-status-bar';
import { Text, View } from 'react-native';
import style from './style';

export default function App() {
  return (
    <View style={style.container}>
      <Text>Hello there!</Text>
      <StatusBar style="auto" />
    </View>
  );
}