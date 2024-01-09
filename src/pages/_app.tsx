import { ChakraProvider } from '@chakra-ui/react'
import { type AppType } from 'next/app'
import { trpc } from '@/utils/trpc'
import '@/components/Calendar.css'
import '../styles/globals.css'
import '../styles/Spinner.css'

const MyApp: AppType = ({ Component, pageProps }) => {
  return <Component {...pageProps} />
}

export default trpc.withTRPC(MyApp)
